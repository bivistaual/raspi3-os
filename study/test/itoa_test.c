#include <stdio.h>
#include <string.h>

static char getDigit(int n, char * str, int * pIndex)
{
	char c;
	if (n / 10 > 0) {
		c = getDigit(n / 10, str, pIndex);
		str[*pIndex] = c;
		(*pIndex)++;
		return (n % 10 + '0');
	} else {
		return (n + '0');
	}
}

static char * itoa(int n, char * str)
{
	int index = 0;
	char c = getDigit(n, str, &index);
	str[index++] = c;
	str[index] = '\0';
	return str;
}

int main(void)
{
	char temp[1024];
	printf("%c\n", 7 + '0');
	printf("1234567 = %s\n", itoa(1234567, temp));
	return 0;
}

