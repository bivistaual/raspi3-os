#ifndef _XMODEM_H
#define _XMODEM_H

#define XMODEM_SOH	0x01
#define XMODEM_EOT	0x04
#define XMODEM_ACK	0x06
#define XMODEM_NAK	0x15
#define XMODEM_CAN	0x18

/*
 * Transmit data from 'sourceHandler' to 'targetHandler' using the XMODEM protocol.
 * If the length of the total data yielded by 'sourceHandler' is not multiple of
 * 128 bytes, the data is padded with zeroes and sent to the targetHandler.
 * Returns the number of bytes written to 'targetHandler' excluding padding zeroes
 * or -1 indicating error.
 */

long xmodem_transmit(int sourceHandler, int targetHandler);

/*
 * Receives data from 'sourceHandler' using the XMODEM protocol and writes it into
 * 'targetHandler'.
 * Returns the number of bytes read from 'sourceHandler' which is a multiple of 128
 * or -1 indicating error.
 */

long xmodem_receive(int sourceHandler, int targetHandler);

#endif

