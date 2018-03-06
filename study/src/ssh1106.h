#ifndef SSH1106_H
#define SSH1106_H

#define SSH1106_ONLY_DATA								0x00
#define SSH1106_DATA_CTRL								0x80
#define SSH1106_CTRL_CMD								0x00
#define SSH1106_CTRL_RAM								0x40
#define SSH1106_SLAVE_ADDR								0x78
#define SSH1106_SA0										0x02
#define SSH1106_R										0x01

//	COMMAND DEFINATION

//	set lower column address:							0x00 to 0x0f	

//	set higher column address:							0x10 to 0x1f
	
//	set pump voltage value:								0x30 to 0x33 (0x32 POR)
//		(This maybe the brightness of the screen.)
	
//	set display start line:								0x40 to 0x7f
//		(Specifies line address (refer to Figure. 8) to determine the initial display line
//		or COM0. The RAM display data becomes the top line of OLED screen. It is followed
//		by the higher number of lines in ascending order, corresponding to the duty cycle.
//		When this command changes the line address, the smooth scrolling or page change
//		takes place.)

//	set contrast control register:
//		contrast control mode set:						0x81
//		contrast data register set:						0x00 to 0xff (0x80 Power On Reset)
#define SSH1106_CONTRAST_MODE							0x81

//	set segment re-map:									0xa0 or 0xa1
#define SSH1106_SEG_REMAP_MODE							0x81
#define SSH1106_SEGMENT_RIGHT							0xa0
#define SSH1106_SEGMENT_LEFT							0xa1

//	set entire display off/on:							0xa4 or 0xa5
//		(Forcibly turns the entire display on regardless of the contents of the display
//		data RAM. At this time, the contents of the display	data RAM are held.
//		This command has priority over the normal/reverse display command.)
#define SSH1106_DISPLAY_ENTIER_OFF						0xa4
#define SSH1106_DISPLAY_ENTIER_ON						0xa5

//	set normal/reverse display:							0xa6 or 0xa7
#define SSH1106_NORMAL_DISPLAY							0xa6
#define SSH1106_REVERSE_DISPLAY							0xa7

//	set multiplex ration:
//		multiplex ration mode set:						0xa8
//		multiplex ration data set:						0x00 to 0x3f
#define SSH1106_MULTIPLEX_RATION_MODE					0xa8

//	set dc-dc off/on:
//		dc-dc control mode set:							0xad
//		dc-dc off/on mode set:							0x8a or 0x8b
//		(!!!!!!! The panel display must be off while issuing this command. !!!!!!!)
#define SSH1106_DC_DC_MODE								0xad
#define SSH1106_DC_DC_OFF								0x8a
#define SSH1106_DC_DC_ON								0x8b

//	display off/on:										0xae or 0xaf (0xae POR)
//		(When the display OFF command is executed, power saver mode will be entered.
//		Sleep mode:
//			This mode stops every operation of the OLED display system, and can reduce
//			current consumption nearly to a static current value if no access is made
//			from the microprocessor. The internal status in the sleep mode is as follows:
//				1)	Stops the oscillator circuit and DC-DC circuit.
//				2)	Stops the OLED drive and outputs HZ as the segment/common driver
//					output.
//				3)	Holds the display data and operation mode provided before the start
//					of the sleep mode.
//				4)	The MPU can access to the built-in display RAM.)
#define SSH1106_DISPLAY_OFF								0xae
#define SSH1106_DISPLAY_ON								0xaf

//	set page address:									0xb0 to 0xb7

//	set common output scan direction:					0xc0 or 0xc8 (0xc0 POR)
#define SSH1106_SCAN_FRONT								0xc0
#define SSH1106_SCAN_BACK								0xc8

//	set display offset:
//		display offset mode set:						0xd3
//		display offset data set:						0x00 to 0x3f
//		(This is a double byte command. The next command specifies the mapping of display
//		start line to one of COM0-63 (it is assumed that COM0 is the display start line,
//		that equals to 0). For example, to move the COM16 towards the COM0 direction for
//		16 lines, the 6-bit data in the second byte should be given by 010000. To move
//		in the opposite direction by 16 lines, the 6-bit data should be given by (64-16),
//		so the second byte should be 100000.)
#define SSH1106_DISPLAY_OFFSET_MODE						0xd3

//	set display clock divide ratio/oscillator frequency:
//		divide ratio/oscillator frequency mode set:		0xd5
//		divide ratio/oscillator frequency data set:		0x00 to 03f
//		(where A3 to A0 defines divide ration(1 POR) and A7 to A4 defines frequency
//		increase.)
#define SSH1106_CLK_DIV_MODE							0xd5

//	set dis-charge/pre-charge period:
//		pre-charge period mode set:						0xd9
//		dis-charge/pre-charge period data:				0x00 to 0xff
//		(A3 to A0 defines pre-charge period while A7 to A4 defines dis-charge period.
//		Zero is invalid!)
#define SSH1106_CHARGE_MODE								0xd9

//	set common pads hardware configuration:
//		common pads hardware configuration mode set:	0xda
//		sequential/alternative mode set:				0x02 or 0x12 (0x12 POR)
#define SSH1106_PAD_CONFIG_MODE							0xda
#define SSH1106_PAD_SEQ									0x02
#define SSH1106_PAD_ALT									0x12

//	set VCOM deselect level:
//		VCOM deselect level mode set:					0xdb
//		VCOM deselect level data set:					0x00 to 0xff
#define SSH1106_VCOM_DESEL_MODE							0xdb

//	read-modify-write:									0xe0
//		(A pair of Read-Modify-Write and End commands must always be used. Once read-
//		modify-write is issued, column address is not incremental by read display data
//		command but incremental by write display data command only. It continues until End
//		command is issued. When the End is issued, column address returns to the address
//		when read-modify-write is issued. This can reduce the microprocessor load when
//		data of a specific display area is repeatedly changed during cursor blinking or
//		others.)
#define SSH1106_RMW										0xe0

//	end:												0xee
//		(Cancels Read-Modify-Write mode and returns column address to the original address
//		(when Read-Modify-Write is issued.))
#define SSH1106_RMW_END									0xee

//	nop:												0xe3
#define SSH1106_NOP										0xe3

//	write display data:									A0 = 1, E, WR

//	read status:										A0 = 0, RD, R
//		(When D7 is high, the SH1106 is busy due to internal operation or reset. Any
//		command is rejected until D7 goes low. The busy check is not required if enough
//		time is provided for each cycle.
//		D6 indicates whether the display is on or off. When goes low the display turns on.
//		When goes high, the display turns off. This is the opposite of Display ON/OFF
//		command.)

//	read display data:									A0 = 1, RD, R

void ssh1106_write_byte(const unsigned char);
void ssh1106_write_char(const unsigned char);
void ssh1106_write_string(const unsigned char *, unsigned int);
void ssh1106_set_page(unsigned int);
void ssh1106_set_col(unsigned int);

#endif

