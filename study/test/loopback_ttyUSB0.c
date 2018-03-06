#include <stdio.h>
#include <stdlib.h>
#include <termios.h>
#include <unistd.h>
#include <getopt.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(int argc, char **argv)
{
	char opt;
	int optIndex;
	int disXMODEM = 0;
	char optString[] = "i:b:t:w:f:s:r";
	char inputFilePath[1024];
	static struct option longOptions[] = {
		{"baud",			required_argument,	NULL,	'b'},
		{"timeout",			required_argument,	NULL,	't'},
		{"width",			required_argument,	NULL,	'w'},
		{"flow-control",	required_argument,	NULL,	'f'},
		{"stop-bits",		required_argument,	NULL,	's'},
		{"raw",				no_argument,		NULL,	'r'},
		{0,					0,					0,		0}
	};
	struct termios termiosOption;
	int ttyDevice, inputHandler;

	if ((ttyDevice = open("/dev/ttyUSB0", O_RDWR | O_NOCTTY | O_NONBLOCK)) == -1) {
		perror("Serial device /dev/ttyUSB0 open error!\n");
		return -1;
	}

	if (tcgetattr(ttyDevice, &termiosOption)) {
		perror("Call tcgetaddr() error!\n");
		return -1;
	}

	tcflush(ttyDevice, TCIOFLUSH);

	termiosOption.c_cflag |= CLOCAL | CREAD;
	cfsetispeed(&termiosOption, B115200);
	cfsetospeed(&termiosOption, B115200);
	termiosOption.c_cc[VTIME] = 10;
	termiosOption.c_cflag |= CS8;
	termiosOption.c_cflag &= ~CRTSCTS;
	termiosOption.c_cflag &= ~CSTOPB;

	while ((opt = getopt_long(argc, argv, optString, longOptions, &optIndex)) != -1) {
		switch (opt) {
			case 'i':
				strcpy(inputFilePath, optarg);
				printf("Input file path\t:\t%s\n", inputFilePath);
				break;
			case 'b':
				switch (atoi(optarg)) {
					case 0:
						cfsetispeed(&termiosOption, B0);
						cfsetospeed(&termiosOption, B0);
						printf("Baud rate set to\t:\t%d\n", atoi(optarg));
						break;
					case 9600:
						cfsetispeed(&termiosOption, B9600);
						cfsetospeed(&termiosOption, B9600);
						printf("Baud rate set to\t:\t%d\n", atoi(optarg));
						break;
					case 230400:
						cfsetispeed(&termiosOption, B230400);
						cfsetospeed(&termiosOption, B230400);
						printf("Baud rate set to\t:\t%d\n", atoi(optarg));
						break;
					default:
						cfsetispeed(&termiosOption, B115200);
						cfsetospeed(&termiosOption, B115200);
						printf("Baud rate set to\t:\t%d\n", 115200);
						break;
				}
				break;
			case 't':
				termiosOption.c_cc[VTIME] = atoi(optarg);
				printf("Timeout set to\t\t:\t%d\n", atoi(optarg));
				break;
			case 'w':
				termiosOption.c_cflag &= ~CSIZE;
				switch (atoi(optarg)) {
					case 5:
						termiosOption.c_cflag |= CS5;
						printf("Data width set to\t:\t%d\n", atoi(optarg));
						break;
					case 6:
						termiosOption.c_cflag |= CS6;
						printf("Data width set to\t:\t%d\n", atoi(optarg));
						break;
					case 7:
						termiosOption.c_cflag |= CS7;
						printf("Data width set to\t:\t%d\n", atoi(optarg));
						break;
					default:
						termiosOption.c_cflag |= CS8;
						printf("Data width set to\t:\t%d\n", 8);
						break;
				}
				break;
			case 'f':
				if (strcmp("hardware", optarg) == 0) {
					termiosOption.c_cflag |= CRTSCTS;
					printf("Hardware flow control.\n");
				} else if (strcmp("software", optarg) == 0) {
					termiosOption.c_cflag |= IXON | IXANY | IXOFF;
					printf("Software flow control.\n");
				} else {
					termiosOption.c_cflag &= ~CRTSCTS;
					printf("None flow control.\n");
				}
				break;
			case 's':
				if (atoi(optarg) == 2) {
					termiosOption.c_cflag |= CSTOPB;
					printf("Stop bits set to\t:\t%d\n", 2);
				} else {
					termiosOption.c_cflag &= ~CSTOPB;
					printf("Stop bits set to\t:\t%d\n", 1);
				}
				break;
			case 'r':
				disXMODEM = 1;
				printf("XMODEM disabled.\n");
				break;
			default:
				break;
		}
	}

	termiosOption.c_oflag &= ~OPOST;

	tcflush(ttyDevice, TCIFLUSH);

	if (tcsetattr(ttyDevice, TCSANOW, &termiosOption) != 0) {
		perror("Serial device setup error!\n");
		return -1;
	}

	printf("Serial device setup done!\n");

	char strOut[] = "Hello world!\n";
	char strIn[1024];
	int n;

	printf("Writting %ld bytes...\n", sizeof(strOut));
	n = write(ttyDevice, strOut, sizeof(strOut));
	printf("Written %d bytes.\n", n);
	tcdrain(ttyDevice);
	
	printf("Reading...\n");
	n = read(ttyDevice, strIn, sizeof(strOut));
	printf("Read %d bytes(no '\\0').\n", n);
	strIn[n] = '\0';

	printf("Read data: %s", strIn);

	close(ttyDevice);
	printf("Serial device closed!\n");

	return 0;
}

