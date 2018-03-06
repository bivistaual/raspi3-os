#include "system_timer.h"
#include "mini_uart.h"
#include "xmodem.h"
#include "fcntl.h"
#include "string.h"
#include "led.h"

#define RX_TIMEOUT 30000000
#define START_ADDR 0x80000

static unsigned char getChecksum(unsigned char [], unsigned char);

/*
long xmodem_transmit(int sourceHandler, int targetHandler)
{
	unsigned char packet[132], feedback, retryTimes = 0;
	unsigned long packetCnt = 0;
	long startTime;
	memset(packet, '0', 128);

	startTime = current_time(NULL);
	printf("T:Waiting for NAK...");
	while (1) {
		if (mu_read_fifo(targetHandler, &feedback, 1) != 1) {
			if (current_time(NULL) - startTime >= RX_TIMEOUT) {
				printf("Timeout!\n");
				return -1;
			}
			usleep(SLEEP_TIME_US);
			putchar('.');
		} else {
			if (feedback == XMODEM_NAK) {
				putchar('\n');
				break;
			} else {
				printf("NAK requested!\n");
				return -1;
			}
		}
	}

	// mu_read_fifo data from file to be transfered
	while (mu_read_fifo(sourceHandler, &packet[3], 128) != 0) {
		// prepare a block
		packet[0] = XMODEM_SOH;
		packet[1] = packetCnt & 0xff;
		packet[2] = (2RX_TIMEOUTRX_TIMEOUT - packetCnt) & 0xff;
		packet[131] = getChecksum(&packet[3], 128);

		// try 10 current_times one packet
		while (1) {
			printf("T:Writing block...\n");
			mu_write_fifo(targetHandler, packet, 132);
			tcdrain(targetHandler);

			printf("T:Reading feedback...");
			startTime = current_time(NULL);
			while (1) {
				if (mu_read_fifo(targetHandler, &feedback, 1) != 1) {
					if (current_time(NULL) - startTime >= RX_TIMEOUT) {
						printf("T:Timeout!\n");
						return -1;
					}
					usleep(SLEEP_TIME_US);
					putchar('.');
				} else
					break;
			}
			putchar('\n');

			if (feedback == XMODEM_ACK) {
				printf("T:Preparing next block...\n");
				retryTimes = 0;
				break;
			} else if (feedback == XMODEM_NAK) {
				printf("T:Transmission error! Retring current block...\n");
				if (retryTimes++ >= 10)
					return -1;
				else
					continue;
			} else {
				printf("T:Canceling...\n");
				return -1;
			}
		}
		
		packetCnt++;
		
		memset(packet, '0', 132);
	}

	// end the transmission
	printf("T:Transmission ending...\n");
	feedback = XMODEM_EOT;
	mu_write_fifo(targetHandler, &feedback, 1);
	tcdrain(targetHandler);

	printf("T:Reading feedback...");
	startTime = current_time(NULL);
	while (1) {
		if (mu_read_fifo(targetHandler, &feedback, 1) != 1) {
			if (current_time(NULL) - startTime >= RX_TIMEOUT) {
				printf("T:Timeout!\n");
				return -1;
			}
			usleep(SLEEP_TIME_US);
			putchar('.');
		} else
			break;
	}
	putchar('\n');

	if (feedback == XMODEM_NAK) {
		printf("T:Writing EOT...\n");
		feedback = XMODEM_EOT;
		mu_write_fifo(targetHandler, &feedback, 1);
		tcdrain(targetHandler);

		printf("T:Reading feedback...");
		startTime = current_time(NULL);
		while (1) {
			if (mu_read_fifo(targetHandler, &feedback, 1) != 1) {
				if (current_time(NULL) - startTime >= RX_TIMEOUT) {
					printf("T:Timeout!\n");
					return -1;
				}
				usleep(SLEEP_TIME_US);
				putchar('.');
			} else
				break;
		}
		putchar('\n');

		if (feedback == XMODEM_ACK) {
			printf("T:Transmission ended.\n");
			return packetCnt;
		} else {
			printf("T:ACK requested!\n");
			return -1;
		}
	} else {
		printf("T:NAK requested!\n");
		return -1;
	}
}
*/

long xmodem_receive(int sourceHandler, int targetHandler)
{
	unsigned char packet[128], feedback, retryTimes = 0;
	unsigned long packetCnt = 0;
	char * p = (char *)START_ADDR;
	long startTime;

	startTime = current_time();

	// write NAK

	if (mu_write_fifo(XMODEM_NAK) != 1)
		return -1;
	
	while (1) {	
		
		// wait for SOH or EOT
		
		while (1) {
			if (mu_read_fifo(&feedback) != 1) {
				if (current_time() - startTime <= RX_TIMEOUT) {

					// write NAK again every 100ms
					
					//spin_sleep_ms(100);

					//if (mu_write_fifo(XMODEM_NAK) != 1)
					//	return -1;

					continue;
				} else {
					mu_write_byte(XMODEM_CAN);
					return 0;
				}
			} else 
				break;
		}

		switch (feedback) {
			case XMODEM_SOH:

				// read packet number

				startTime = current_time();
				while (1) {
					if (mu_read_fifo(&feedback) != 1) {
						if (current_time() - startTime >= RX_TIMEOUT) {
							return -1;
						}
					} else
						break;
				}
				
				if (feedback != (unsigned char)packetCnt) {
					mu_write_fifo(XMODEM_CAN);
					return -1;
				}

				// read 1s complement of the packet number
				
				startTime = current_time();
				while (1) {
					if (mu_read_fifo(&feedback) != 1) {
						if (current_time() - startTime >= RX_TIMEOUT) {
							return -1;
						}
					} else
						break;
				}
				
				if (feedback != (unsigned char)(255 - packetCnt)) {
					mu_write_fifo(XMODEM_CAN);
					return -1;
				}

				// read packet
				
				for (int ip = 0; ip < 128; ip++) {
					startTime = current_time();
					while (1) {
						if (mu_read_fifo(packet + ip) != 1) {
							if (current_time() - startTime >= RX_TIMEOUT) {
								return -1;
							}
						} else
							break;
					}
				}

				// read checksum
				
				startTime = current_time();
				while (1) {
					if (mu_read_fifo(&feedback) != 1) {
						if (current_time() - startTime >= RX_TIMEOUT) {
							return -1;
						}
					} else
						break;
				}
				
				// checksum
				
				if (feedback != getChecksum(packet, 128)) {
					if (retryTimes++ <= 10) {
						mu_write_fifo(XMODEM_NAK);
						continue;
					} else {
						mu_write_fifo(XMODEM_CAN);
						return -1;
					}
				}
				retryTimes = 0;

				// copy to memory

				memcpy(p, packet, 128);
				p += 128;
				packetCnt++;

				// write ACK
				
				mu_write_fifo(XMODEM_ACK);

				break;

			case XMODEM_EOT:

				// sending NAK
				
				mu_write_fifo(XMODEM_NAK);

				// wait for second EOT
				
				startTime = current_time();
				while (1) {
					if (mu_read_fifo(&feedback) != 1) {
						if (current_time() - startTime >= RX_TIMEOUT) {
							return -1;
						}
					} else
						break;
				}
				
				if (feedback == XMODEM_EOT) {
					mu_write_fifo(XMODEM_ACK);
					return packetCnt;
				} else {
					mu_write_fifo(XMODEM_CAN);
					return -1;
				}

				break;

			default:
				mu_write_fifo(XMODEM_CAN);
	
				/*
				// read 132 byte to see wtf transmiter send
				// and then send back all the f**king bytes
				
				mu_write_byte(feedback);
				for (int ip = 1; ip < 132; ip++)
					mu_write_byte(mu_read_byte());		
				*/

				return -1;

				break;
		}
	}
}

static unsigned char getChecksum(unsigned char data[], unsigned char size)
{
	unsigned char i = 0, sum = 0;
	
	while (i < size)
		sum += data[i++];

	return sum;
}
