#include <stdio.h>
#include <unistd.h>
#define CHAR	"#include <stdio.h>%1$c#include <unistd.h>%1$c#define CHAR	%2$c%3$s%2$c%1$c#define PRINT(fd)	fprintf(fd,CHAR,10,34,CHAR)%1$c#define NAME	%2$cGrace_kid.c%2$c%1$cint main(){FILE *fd;fd = fopen(NAME, %2$cw%2$c);if (fd > 0){PRINT(fd);}return(0);}"
#define PRINT(fd)	fprintf(fd,CHAR,10,34,CHAR)
#define NAME	"Grace_kid.c"
int main(){FILE *fd;fd = fopen(NAME, "w");if (fd > 0){PRINT(fd);}return(0);}