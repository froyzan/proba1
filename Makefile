# **************************************************************************** #
# #                                                                              #
# #                                                         :::      ::::::::    #
# #    Makefile                                           :+:      :+:    :+:    #
# #                                                     +:+ +:+         +:+      #
# #    By: psafflow <marvin@42.fr>                    +#+  +:+       +#+         #
# #                                                 +#+#+#+#+#+   +#+            #
# #    Created: 2020/05/05 16:30:59 by psafflow          #+#    #+#              #
# #    Updated: 2020/15/23 17:11:57 by psafflow         ###   ########.fr        #
# #                                                                              #
# # **************************************************************************** #

NAME=libft.a

C_FILES=ft_memcpy.c\
		ft_memccpy.c\
		ft_memset.c\
		ft_bzero.c\
		ft_memmove.c\
		ft_memcmp.c\
		ft_memchr.c\
		ft_strlen.c\
		ft_isalpha.c\
		ft_isdigit.c\
		ft_isalnum.c\
		ft_isascii.c\
		ft_isprint.c\
		ft_toupper.c\
		ft_tolower.c\
		ft_strchr.c\
		ft_strrchr.c\
		ft_strlcat.c\
		ft_strlcpy.c\
		ft_atoi.c\
		ft_strnstr.c\
		ft_strncmp.c\
		ft_calloc.c\
		ft_strdup.c\
		ft_substr.c\
		ft_strjoin.c\
		ft_strtrim.c\
		ft_split.c\
		ft_itoa.c\
		ft_strmapi.c\
		ft_putchar_fd.c\
		ft_putstr_fd.c\
		ft_putendl_fd.c\
		ft_putnbr_fd.c

O_FILES=ft_memcpy.o\
		ft_memccpy.o\
		ft_memset.o\
		ft_bzero.o\
		ft_memmove.o\
		ft_memcmp.o\
		ft_memchr.o\
		ft_strlen.o\
		ft_isalpha.o\
		ft_isdigit.o\
		ft_isalnum.o\
		ft_isascii.o\
		ft_isprint.o\
		ft_toupper.o\
		ft_tolower.o\
		ft_strchr.o\
		ft_strrchr.o\
		ft_strlcat.o\
		ft_strlcpy.o\
		ft_atoi.o\
		ft_strnstr.o\
		ft_strncmp.o\
		ft_calloc.o\
		ft_strdup.o\
		ft_substr.o\
		ft_strjoin.o\
		ft_strtrim.o\
		ft_split.o\
		ft_itoa.o\
		ft_strmapi.o\
		ft_putchar_fd.o\
		ft_putstr_fd.o\
		ft_putendl_fd.o\
		ft_putnbr_fd.o

INCLUDES=./

GREEN=\033[32m
NC=\033[0m

all: $(NAME)

$(NAME): $(C_FILES) libft.h
	@gcc -Wall -Wextra -Werror -I$(INCLUDES) -c $(C_FILES)
	@ar rc $(NAME) $(O_FILES)
	@ranlib $(NAME)
	@echo "${GREEN}Compile $(NAME) succes.${NC}";

clean:
	@/bin/rm -f $(O_FILES)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all
