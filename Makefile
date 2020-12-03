# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ayghazal <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/23 19:14:15 by ayghazal          #+#    #+#              #
#    Updated: 2020/11/25 00:21:49 by ayghazal         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRCS = ft_strlen.s ft_strcmp.s ft_strcpy.s ft_read.s ft_write.s ft_strdup.s

OBJS = $(SRCS:.s=.o)

.s.o : $(SRCS)
	nasm -f macho64 $<

$(NAME) : $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

all : $(NAME)


clean :
	rm -rf $(OBJS)

fclean : clean
	rm -rf $(NAME)
	rm a.out

re : fclean all

test : all
	gcc main.c $(NAME)
	./a.out
