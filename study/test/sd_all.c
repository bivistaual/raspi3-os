#include "types.h"
#include "spi.h"
#include "sdcard.h"
#include "crc.h"
#include "uart.h"

static int sd_readsector(u32 address, u8 *buf);

static void sd_cmd(u8 cmd, u32 arg);
static int  sd_read_status(void);
static u8   sd_get_r1(void);
static u16  sd_get_r2(void);
static u8   sd_get_r7(u32 *r7);
static void sd_nec   (void);
#define sd_get_r3 sd_get_r7

#define spi_cs    spi2_cs
#define spi_rd    spi2_rd
#define spi_wr    spi2_wr
#define spi_wait  spi2_wait
#define spi_flush spi2_flush

int sd_read(u32 address, u8 *buf)
{
	int r;
	int tries = 10;

    //sd_read_status(); uart_crlf();

	r = sd_readsector(address, buf);

	while (r < 0 && tries--) {
		if (sd_init() != 0)
			continue;

		/* read status register */
		sd_read_status();

		r = sd_readsector(address, buf);
	}
	if (tries == -1)
	{
		uart_puts("Could not read sector ");
		uart_puthex(address);
		uart_crlf();
	}

	return r;
}

static int sd_readsector(u32 address, u8 *buf)
{
	int r;
	int i, j;

	spi_cs(1);
	//if (hw->capabilities & CAP_SDHC)
		sd_cmd(CMD17, address); /* read single block */
	//else
	//	sd_cmd(17, address*512); /* read single block */

	r = sd_get_r1();
	if (r == 0xff) {
		spi_cs(0);
		r = -1;
		goto fail;
	}
	if (r & 0xfe) {
		spi_cs(0);
		uart_puts("sd_readsector() r1=");
		uart_puthex8(r);
		uart_crlf();
		r = -2;
		goto fail;
	}

    while(1)
    {
        spi_wr(0xFF);
        r = spi_rd();
        if (r == 0xFE)
            break;
    }
    for (i = 0; i < 32; i++)
    {
        uart_puthex(address);
        uart_puts("  ");
        for (j = 0; j < 16; j++)
        {
            spi_wr(0xFF);
            r = spi_rd();
            uart_puthex8(r); uart_putc(' ');
        }
        address += 16;
        uart_crlf();
    }

	sd_nec();
	spi_cs(0);
	if (r == -1) {
		r = -3;
		goto fail;
	}

	return 0;
 fail:
	uart_puts("failed to read sector ");
	uart_puthex(address);
	uart_crlf();
	return r;
}

int sd_init(void)
{
    int i;
    int r;
	u32 r3, r7;
    u32 hcs;
    
    /* Power up, wait 74 clocks before first CMD (spec 6.4) */
    spi_cs(0);
    for (i=0; i<10; i++)
		spi_wr(0xff);
	
	/* Go to Idle state */
    spi_cs(1);
    sd_cmd(CMD00, 0);
	r = sd_get_r1();
	sd_nec();
    spi_cs(0);
    if (r != 0x01)
    {
        uart_puts("SDCARD: CMD00 fails ");
        uart_puthex8(r);
        uart_crlf();
        return -1;
    }

    /* Send interface condition (mainly voltage) */
	spi_cs(1);
	sd_cmd(CMD08, 0x01aa); /* 2,7V to 3,6V */
	r = sd_get_r7(&r7);
	sd_nec();
	spi_cs(0);
	if ( (r != 0x01) && (r != 0x05) )
	{
	    uart_puts("SDCARD: CMD08 fails ");
	    uart_puthex8(r); uart_putc(' '); uart_puthex(r7);
	    uart_crlf();
	    return -2;
	}
    
    /* Read OCR */
	spi_cs(1);
	sd_cmd(CMD58, 0);
	r = sd_get_r3(&r3);
	sd_nec();
	spi_cs(0);
	if ( (r != 0x01) && (r != 0x05) )
	{
	    uart_puts("SDCARD: CMD58 fails ");
	    uart_puthex8(r); uart_putc(' '); uart_puthex(r3);
	    uart_crlf();
	    return -3;
	}

    /* Wait for SDCARD to exit IDLE mode */
    hcs = 0;
    while(1)
    {
        /* CMD55: APP_CMD, the next command will be application specific */
        spi_cs(1);
        sd_cmd(55, 0);
		r = sd_get_r1();
		sd_nec();
		spi_cs(0);
		if (r & 0xFA)
		{
            uart_puts("SDCARD: CMD55 fails ");
            uart_puthex8(r);
            uart_crlf();
            return -4;
		}
        
        spi_cs(1);
		sd_cmd(41, hcs);
		r = sd_get_r1();
		sd_nec();
		spi_cs(0);
		if (r & 0xFA)
		{
            uart_puts("SDCARD: ACMD41 fails ");
            uart_puthex8(r);
            uart_crlf();
            return -5;
		}
        
        if ( (r & 1) == 0)
            break;
    }

    /* Read CR (again) */
	spi_cs(1);
	sd_cmd(CMD58, 0);
	r = sd_get_r3(&r3);
	sd_nec();
	spi_cs(0);
	if ( (r != 0x00) && (r != 0x04) )
	{
	    uart_puts("SDCARD: CMD58(2) fails ");
	    uart_puthex8(r); uart_putc(' '); uart_puthex(r3);
	    uart_crlf();
	    return -6;
	}

#ifdef not_defined
    /* CMD16 : Block Len */
	spi_cs(1);
	sd_cmd(16, 512);
	r = sd_get_r1();
	sd_nec();
	spi_cs(0);
	uart_puts("CMD16="); uart_puthex8(r); uart_crlf();
#endif

	/* Activate CRC */
	spi_cs(1);
	sd_cmd(CMD59, 0);
	r = sd_get_r1();
	sd_nec();
	spi_cs(0);
	if (r != 0x00)
	{
	    uart_puts("SDCARD: CMD59 fails ");
	    uart_puthex8(r);
	    uart_crlf();
	    return -7;
	}
    
    return(0);
}

static void sd_cmd(u8 cmd, u32 arg)
{
	u8 crc = 0;
	spi_wr(0x40 | cmd);
	crc = crc7_one(crc, 0x40 | cmd);
	spi_wr(arg >> 24);
	crc = crc7_one(crc, arg >> 24);
	spi_wr(arg >> 16);
	crc = crc7_one(crc, arg >> 16);
	spi_wr(arg >> 8);
	crc = crc7_one(crc, arg >> 8);
	spi_wr(arg);
	crc = crc7_one(crc, arg);
	//spi_wr(0x95);     /* crc7, for cmd0 */
	spi_wr(crc | 0x1);	/* crc7, for cmd0 */

	spi_flush();
}

static int sd_read_status(void)
{
	u16 r2;

	spi_cs(1);
	sd_cmd(13, 0);
	r2 = sd_get_r2();
	sd_nec();
	spi_cs(0);
	if (r2 & 0x8000)
		return -1;
	if (r2)
		uart_puthex16(r2);

	return 0;
}

static u8 sd_get_r1(void)
{
	int tries = 1000;
	u8 r;
	while (tries--) {
	    spi_wr(0xff);
		r = spi_rd();
		if ((r & 0x80) == 0)
			return r;
	}
	return 0xff;
}

static u16 sd_get_r2(void)
{
	int tries = 1000;
	u16 r;

	while (tries--) {
	    spi_wr(0xff);
		r = spi_rd();
		if ((r & 0x80) == 0)
			break;
	}
	if (tries < 0)
		return 0xff;
	
	spi_wr(0xff);
	r = r<<8 | spi_rd();

	return r;
}

static u8 sd_get_r7(u32 *r7)
{
	u32 r;
	r = sd_get_r1();
	if (r != 0x01)
		return r;

    spi_wr(0xff);
	r = spi_rd() << 24;
	spi_wr(0xff);
	r |= spi_rd() << 16;
	spi_wr(0xff);
	r |= spi_rd() << 8;
	spi_wr(0xff);
	r |= spi_rd();

	*r7 = r;
	return 0x01;
}

static void sd_nec(void)
{
	int i;
	for (i=0; i<8; i++)
		spi_wr(0xff);
}
