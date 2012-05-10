#include <stdlib.h>

int main(int argc, char *argv[]) 
{
	int i;
	printf("Hello world!\nargc = %i\n", argc);
	
	for(i = 1; i < argc; i++) {
		printf("argv[%i] = %s\n", i, argv[i]);
	}
	return 0;
}
