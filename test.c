#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]) 
{
	unsigned int i, j;
	printf("Hello world!\n\n\nargc = %i\n", argc);
	for(i = 1; i < argc; i++) {
		printf("argv[%i] = %s\n", i, argv[i]);
	}
	return 0;
}
