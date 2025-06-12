#include <stdio.h>
/* bitcount*/
main()
{
	printf("%d",bitcount(0x5C2A));
}
int bitcount(unsigned x)
{
	int b;
	for (b = 0; x != 0; x >>= 1)
		if (x & 01)
			b++;
	return b;
}