#include <stdio.h>
#include <stdlib.h>

int main()
{
	int i = 5;
	char fn[10] = {0};
	sprintf(fn, "Sully_%d.c", i - 1);
	FILE *f = fopen(fn, "w");
	if (!f) return 1;
	char *s = "#include <stdio.h>%c#include <stdlib.h>%c%cint main()%c{%c	int i = %d;%c	char fn[10] = {0};%c	sprintf(fn, %cSully_%%d.c%c, i - 1);%c	FILE *f = fopen(fn, %cw%c);%c	if (!f) return 1;%c	char *s = %c%s%c;%c	fprintf(f, s, 10, 10, 10, 10, 10, i - 1, 10, 10, 34, 34, 10, 34, 34, 10, 10, 34, s, 34, 10, 10, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 10);%c	fclose(f);%c	char exe[1000] = {0};%c	sprintf(exe, %cclang -Wall -Wextra -Werror Sully_%%d.c -o Sully_%%d && echo -n%c, i - 1, i - 1);%c	system(exe);%c	char new_prog[10] = {0};%c	sprintf(new_prog, %c./Sully_%%d%c, i - 1);%c	if (i - 1 > 0) system(new_prog);%c	return 0;%c}";
	fprintf(f, s, 10, 10, 10, 10, 10, i - 1, 10, 10, 34, 34, 10, 34, 34, 10, 10, 34, s, 34, 10, 10, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 10);
	fclose(f);
	char exe[1000] = {0};
	sprintf(exe, "clang -Wall -Wextra -Werror Sully_%d.c -o Sully_%d && echo -n", i - 1, i - 1);
	system(exe);
	char new_prog[10] = {0};
	sprintf(new_prog, "./Sully_%d", i - 1);
	if (i - 1 > 0) system(new_prog);
	return 0;
}