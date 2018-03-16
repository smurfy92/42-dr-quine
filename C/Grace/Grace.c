#include <stdio.h>
#include <unistd.h>
#define CHAR	"#include <stdio.h>%1$c#include <unistd.h>%1$c#define CHAR	%2$c%3$s%2$c%1$c#define PRINT(fd)	fprintf(fd,CHAR,10,34,CHAR)%1$c#define FT() int main(){FILE *fd;fd = fopen(%2$cGrace_kid.c%2$c, %2$cw%2$c);if (fd > 0){PRINT(fd);}return(0);}%1$cFT()"
#define PRINT(fd)	fprintf(fd,CHAR,10,34,CHAR)
#define FT() int main(){FILE *fd;fd = fopen("Grace_kid.c", "w");if (fd > 0){PRINT(fd);}return(0);}
FT()