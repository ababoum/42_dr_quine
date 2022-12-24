F_NONE		= \033[37;0m
F_BOLD		= \033[1m
F_ORANGE	= \033[38m
F_RED		= \033[31m
F_YELLOW	= \033[33m
F_GREEN		= \033[32m
F_CYAN		= \033[36m
F_BLUE		= \033[34m

CC			= @gcc

CFLAGS		= -Wall -Wextra -Werror -g

SRCS		= Sully.c

INCLUDES	= 

OBJS		= $(SRCS:.c=.o)

NAME		= Sully

all:	$(NAME)

$(NAME):	$(OBJS) $(INCLUDES)
		$(CC) $(CFLAGS) $(OBJS) -o $(NAME)
		@echo "$(F_GREEN)$(F_BOLD) $(NAME) executable is compiled and ready.$(F_NONE)"

test:
		mkdir -p tmp
		cp Sully tmp
		cd tmp ; ./Sully ; ls -al | grep Sully | wc -l
		- diff Sully.c tmp/Sully_5.c
		- diff Sully.c tmp/Sully_4.c
		- diff tmp/Sully_5.c tmp/Sully_0.c
		rm -rf tmp

clean:
		@rm -f $(OBJS)
		@echo "$(F_CYAN)$(F_BOLD) .o files successfully deleted.$(F_NONE)"

fclean:	clean
		@rm -f $(NAME)
		@echo "$(F_CYAN)$(F_BOLD) $(NAME) executable successfully deleted.$(F_NONE)"

re:	fclean $(NAME)

.PHONY: clean fclean all re