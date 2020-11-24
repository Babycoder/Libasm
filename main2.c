#include "libasm.h"

int		main()
{
	//char buffer[100];
	//int fd = open("txdt.txt", O_RDONLY);

	//ft_read(fd, buffer, 5);
	ft_write(8, "abcd\n", 2);
	printf("\nErrno value [%d] = %s\n",errno,  strerror(errno));
	//printf("========================\n");
	//ft_write(5, "abcd\n", 5);
	//printf("\nErrno value = %d\n", errno);
	return(0);
}
