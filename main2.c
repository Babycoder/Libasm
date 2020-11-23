#include "libasm.h"

int		main()
{
	char buffer[100];
	int fd = open("txdt.txt", O_RDONLY);

	ft_read(fd, buffer, 5);
	printf("%s\b", buffer);
}
