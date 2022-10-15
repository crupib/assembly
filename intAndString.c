#include <stdio.h>
// testing github
int main(void)
{
	unsigned int anInt;
	char aString[10];
	printf("Enter a number in hexadecimal: ");
	scanf("%x", &anInt);
	printf("Enter it again: ");
	scanf("%s", aString);
	printf("The integer is %u and the string is %s\n", anInt, aString);
	return 0;
}
