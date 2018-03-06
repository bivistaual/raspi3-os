#include <stddef.h>

void * memcpy (void * destination, const void * source, size_t num);

void * memcpy (void * destination, const void * source, size_t num)
{
	for (size_t i = 0; i < num; i++)
		*((char *)(destination + i)) = *((const char *)(source + i));

	return (void *)destination;
}

unsigned long strlen(const char * str)
{
	unsigned long len = 0;

	while (str[len++] != '\0');

	return len - 1;
}

int strcmp(const char * str1, const char * str2)
{
	int index = 0;
	
	while (str1[index] != '\0') {
		if (str1[index] != str2[index])
			return 1;
		index++;
	}
	
	return (str2[index] != '\0');
}

char * strcpy(char * t, const char * s)
{
	int index = 0;

	while (s[index] != '\0') {
		t[index] = s[index];
		index++;
	}
	t[index] = '\0';

	return t;
}

char * strtok(char * s, const char * p)
{
	static char * ssp = NULL, * scp = NULL, * sep = NULL;
	const char * pp;
	
	if (s != NULL) {
		ssp = scp = s;
		while (*scp != '\0') {
			pp = p;
			while (*pp != '\0') {
				if (*scp == *pp) {
					*scp = '\0';
					break;
				}
				pp++;
			}
			scp++;
		}
		sep = scp;
	}

	scp = ssp;
	while (*scp == '\0') {
		if (scp >= sep)
			return NULL;
		scp++;
	}
	ssp = scp + strlen(scp);

	return scp;
}

void * memset (void * ptr, int value, size_t num)
{
	for (unsigned long i = 0; i < num; i++)
		*((char *)(ptr + i)) = value;
	return (void *)ptr;
}
