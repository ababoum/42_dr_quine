#include <stdio.h>

/*
	This program will print its own source when run.
*/

int ft() {
	return 42;
}

int main() {
	/*
		This program will print its own source when run.
	*/
	char *s = "#include <stdio.h>%c%c/*%c	This program will print its own source when run.%c*/%c%cint ft() {%c	return 42;%c}%c%cint main() {%c	/*%c		This program will print its own source when run.%c	*/%c	char *s = %c%s%c;%c	printf(s, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10);%c	ft();%c}";
	printf(s, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10);
	ft();
}