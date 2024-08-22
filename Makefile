# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pablogon <pablogon@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/21 16:45:24 by pablogon          #+#    #+#              #
#    Updated: 2024/08/22 20:36:06 by pablogon         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIB = ar rcs
RM = rm -f

CC = cc
CFLAGS = -Wall -Wextra -Werror

NAME = libft.a

SRCS =  ft_bzero.c ft_isalpha.c ft_isdigit.c ft_memcpy.c ft_memchr.c \
ft_memmove.c ft_memset.c ft_memcmp.c ft_strlen.c ft_strlcpy.c \
ft_strlcat.c ft_strchr.c ft_strrchr.c ft_strnstr.c ft_strncmp.c \
ft_atoi.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c \
ft_tolower.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c \
ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \

BSRCS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c \
ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c \


OFILES = $(SRCS:.c=.o)
BOFILES = $(BSRCS:.c=.o)
INCLUDE = libft.h

all: $(NAME)

$(NAME):$(OFILES) $(INCLUDE)
	@$(LIB) $(NAME) $(OFILES)
	@echo "Compiling Libft..."

bonus: $(NAME) $(BOFILES) $(INCLUDE)
	$(LIB) $(NAME) $(BOFILES) 
.c.o:
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OFILES)

fclean: clean
	$(RM) $(NAME)

re: fclean all
.PHONY: all clean fclean re ar bonus