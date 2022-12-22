#include <stdio.h>
// Hello World
#define CODE "#include <stdio.h>%c// Hello World%c#define CODE %c%s%c%c#define FT()int main(void){ FILE *f = fopen(%cGrace_kid.c%c, %cw%c); if (!f) return (1); fprintf(f, CODE, 10, 10, 34, CODE, 34, 10, 34, 34, 34, 34, 10); fclose(f);}%cFT()"
#define FT()int main(void){ FILE *f = fopen("Grace_kid.c", "w"); if (!f) return (1); fprintf(f, CODE, 10, 10, 34, CODE, 34, 10, 34, 34, 34, 34, 10); fclose(f);}
FT()