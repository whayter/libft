NAME = libft.a

FIRST =	ft_memset.c			\
		ft_bzero.c			\
		ft_memcpy.c			\
		ft_memccpy.c		\
		ft_memmove.c		\
		ft_memchr.c			\
		ft_memcmp.c			\
		ft_strlen.c			\
		ft_isalpha.c		\
		ft_isdigit.c		\
		ft_isalnum.c		\
		ft_isascii.c		\
		ft_isprint.c		\
		ft_toupper.c		\
		ft_tolower.c		\
		ft_strchr.c			\
		ft_strrchr.c		\
		ft_strncmp.c		\
		ft_strlcpy.c		\
		ft_strlcat.c		\
		ft_strnstr.c		\
		ft_atoi.c			\
		ft_calloc.c			\
		ft_strdup.c			\

SEC =	ft_substr.c			\
		ft_strjoin.c		\
		ft_strtrim.c		\
		ft_split.c			\
		ft_itoa.c			\
		ft_strmapi.c		\
		ft_putchar_fd.c		\
		ft_putstr_fd.c		\
		ft_putendl_fd.c		\
		ft_putnbr_fd.c		\

BONUS =	ft_lstnew.c			\
		ft_lstadd_front.c	\
		ft_lstsize.c		\
		ft_lstlast.c		\
		ft_lstadd_back.c	\
		ft_lstdelone.c		\
		ft_lstclear.c		\
		ft_lstiter.c		\
		ft_lstmap.c			\

MORE =	ft_absval.c			\
		ft_putnbr.c			\
		ft_memalloc.c		\
		ft_memdel.c			\
		ft_islower.c		\
		ft_isupper.c		\
		ft_isspace.c		\
		ft_putendl.c		\
		ft_putstr.c			\
		ft_putchar.c		\
		ft_strequ.c			\
		ft_strnequ.c		\
		ft_strmap.c			\
		ft_striter.c		\
		ft_striteri.c		\
		ft_strclr.c			\
		ft_strdel.c			\
		ft_strnew.c			\
		ft_strcmp.c			\
		ft_strcdup.c		\
		ft_strstr.c			\
		ft_strncat.c		\
		ft_strcat.c			\
		ft_strcpy.c			\
		ft_strncpy.c		\

SRCS = $(FIRST) $(SEC)

BONUS_SRCS = $(FIRST) $(SEC) $(BONUS) $(MORE)

INCLUDES = libft.h

OBJS = $(SRCS:.c=.o)

BONUS_OBJS = $(BONUS_SRCS:.c=.o)

CFLAGS = -Wall -Wextra -Werror -I$(INCLUDES)

CC = gcc

RM = rm -f

$(NAME):
			$(CC) $(CFLAGS) -c $(SRCS)
			ar rc $(NAME) $(OBJS)
			ranlib $(NAME)

all:		$(NAME)

bonus:
			$(CC) $(CFLAGS) -c $(BONUS_SRCS)
			ar rc $(NAME) $(BONUS_OBJS)
			ranlib $(NAME)

clean:
			$(RM) $(OBJS) $(BONUS_OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all bonus clean fclean re
