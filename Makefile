# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nterziog <nterziog@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/22 21:56:01 by nterziog          #+#    #+#              #
#    Updated: 2022/12/23 03:01:35 by nterziog         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
SRCS = ft_printf.c ft_ptr.c ft_putnbr.c ft_putstr.c ft_unsignedint.c ft_hexa.c ft_itoa.c 
OBJS = ft_printf.o ft_ptr.o ft_putnbr.o ft_putstr.o ft_unsignedint.o ft_hexa.o ft_itoa.o
CC = gcc
CFLAGS = -Wall -Wextra -Werror
RM = rm -rf

all: $(NAME)
$(NAME):
	@$(CC) -c $(CFLAGS) $(SRCS)
	@ar rc $(NAME) $(OBJS)
	@echo "\033[32m\n\tDerleme yapıldı, dosyalar arşive eklendi.\n"
clean:
	@$(RM) $(OBJS)
	@echo "\033[31m\n  \t\t'.o' dosyaları silindi.\n"
fclean: clean
	@$(RM) $(NAME)
	@echo "\033[31m  \t\t'.a' dosyası silindi.\n"
re: fclean all

.PHONY: re fclean all clean