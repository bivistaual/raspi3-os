#include <stdint.h>

#include "mini_uart.h"

int sd_init(void)
{
    int i;
    int r;
	uint32_t r3, r7;
    uint32_t hcs;
    
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
        mu_write_str("SDCARD: CMD00 fails ");
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
	    mu_write_str("SDCARD: CMD08 fails ");
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
	    mu_write_str("SDCARD: CMD58 fails ");
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
            mu_write_str("SDCARD: CMD55 fails ");
            return -4;
		}
        
        spi_cs(1);
		sd_cmd(41, hcs);
		r = sd_get_r1();
		sd_nec();
		spi_cs(0);
		if (r & 0xFA)
		{
            mu_write_str("SDCARD: ACMD41 fails ");
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
	    mu_write_str("SDCARD: CMD58(2) fails ");
	    return -6;
	}

#ifdef not_defined
    /* CMD16 : Block Len */
	spi_cs(1);
	sd_cmd(16, 512);
	r = sd_get_r1();
	sd_nec();
	spi_cs(0);
	mu_write_str("CMD16=");
#endif

	/* Activate CRC */
	spi_cs(1);
	sd_cmd(CMD59, 0);
	r = sd_get_r1();
	sd_nec();
	spi_cs(0);
	if (r != 0x00)
	{
	    mu_write_str("SDCARD: CMD59 fails ");
	    return -7;
	}
    
    return(0);
}
