#include <pthread.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>

#include "xmodem.h"

struct argument {
	int sourceHandler;
	int targetHandler;
};

void * transferPthread(void *);
void * receivePthread(void *);

int main(int argc, char **argv)
{
	int sourceHandler, deviceReceiver, deviceTransfer, targetHandler;
	pthread_t transferPid, receivePid;

	sourceHandler = open("source.txt", O_RDONLY);
	deviceTransfer = open("device", O_RDWR | O_CREAT, 0644);
	deviceReceiver = open("device", O_RDWR);
	targetHandler = open("target.txt", O_WRONLY | O_CREAT, 0666);

	struct argument argReceiver = {deviceTransfer, targetHandler};
	struct argument argTransfer = {sourceHandler, deviceReceiver};

	if (pthread_create(&receivePid, NULL, receivePthread, (void *)&argReceiver) != 0) {
		printf("Error in creating transferPthread!\n");
		return -1;
	}

	if (pthread_create(&transferPid, NULL, transferPthread, (void *)&argTransfer) != 0) {
		printf("Error in creating receivePthread!\n");
		return -1;
	}

	sleep(5);

	return 0;
}

void * transferPthread(void * arg)
{
	if (xmodemTransmit(((struct argument *)arg)->sourceHandler,
			((struct argument *)arg)->targetHandler) == -1)
		printf("Error in transmission!\n");

	return (void *)1;
}

void * receivePthread(void * arg) 
{
	if (xmodemReceive(((struct argument *)arg)->sourceHandler,
			((struct argument *)arg)->targetHandler) == -1)
		printf("Error in reveiving!\n");

	return (void *)1;
}
