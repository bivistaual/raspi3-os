#include <stddef.h>
#include <stdint.h>

#include "string.h"

void *memcpy (void *restrict destination, const void *restrict source, size_t num)
{
	for (size_t i = 0; i < num; i++)
		*((char *)(destination + i)) = *((const char *)(source + i));

	return (void *)destination;
}

size_t strlen(const char * str)
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

char * strcpy(char *restrict t, const char *restrict s)
{
	char *dest = t;

	while (*s != '\0') {
		*t = *s;
		t++;
		s++;
	}
	*t = '\0';

	return dest;
}

char * strncpy(char *restrict dest, const char *restrict src, size_t n)
{
	size_t index = 0;

	while (index < n) {
		dest[index] = src[index];
		if (dest[index] != '\0')
			index++;
		else
			break;
	}

	return dest;
}

char *utf16toascii(char *restrict dest, const char *restrict src)
{
	char *d = dest;

	while (*(uint16_t *)src != L'\0') {
		*dest = (char)(*src);
		dest++;
		src += 2;
	}
	*dest = '\0';

	return d;
}

char *utf16ntoascii(char *restrict dest, const char *restrict src, size_t size)
{
	size_t index = 0;

	while (index < size) {
		dest[index] = src[index << 1];
		if (dest[index] != '\0')
			index++;
		else
			break;
	}

	return dest;
}

char *asciitoutf16(char *restrict dest, const char *restrict src)
{
	char *d = dest;

	while (*src != '\0') {
		*(uint16_t *)dest = (uint16_t)(*src);
		dest += 2;
		src++;
	}
	*(uint16_t *)dest = L'\0';

	return d;
}

char *asciintoutf16(char *restrict dest, const char *restrict src, size_t size)
{
	size_t index = 0;

	while (index < size) {
		dest[index << 1] = (uint16_t)(src[index]);
		if ((uint16_t)(dest[index << 1]) != L'\0')
			index++;
		else
			break;
	}

	return dest;
}

char *strcat(char *__restrict dest, const char *__restrict src)
{
	return strcpy(dest + strlen(dest), src);
}

char * strtok(char *restrict s, const char *restrict p)
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
