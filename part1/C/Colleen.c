#include <stdio.h>

// comment outside main

int ft() {
	return 42;
}

int main() {
	// comment in main
	char *s = "#include <stdio.h>%c%c// comment outside main%c%cint ft() {%c	return 42;%c}%c%cint main() {%c	// comment in main%c	char *s = %c%s%c;%c	printf(s, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10);%c	ft();%c}";
	printf(s, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10);
	ft();
}