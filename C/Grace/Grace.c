#include <stdio.h>
#include <unistd.h>
#define CHAR	"#include <stdio.h>%c#include <unistd.h>%c#define CHAR	%c%s%c%c#define PRINT(fd)	fprintf(fd,CHAR,10,10,34,CHAR,34,10,10,34,34,34,34)%cint main(){FILE *fd;fd = fopen(%cGrace_kid.c%c, %cw%c);if (fd > 0){PRINT(fd);}return(0);}"
#define PRINT(fd)	fprintf(fd,CHAR,10,10,34,CHAR,34,10,10,34,34,34,34)
int main(){FILE *fd;fd = fopen("Grace_kid.c", "w");if (fd > 0){PRINT(fd);}return(0);}