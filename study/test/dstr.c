#include <stdio.h>

#define PF "<?>"

int main(void)
{
	char s[32] = "abc" "abd";

	printf(PF "<!>" "hello!%s\n", s);
	return 0;
}
