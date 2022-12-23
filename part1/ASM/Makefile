NAME = Colleen

SRCS = Colleen.s

OBJS = ${SRCS:.s=.o}

# compilation parameters
ASM		= nasm
ASFLAGS	= -f elf64 -g 
LD 		= clang
LDFLAGS	= 
RM		= rm -rf


# compilation
%.o: %.s
	$(ASM) $(ASFLAGS) $<


# rules
all: $(NAME)

$(NAME):	$(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o $(NAME)

test:
	./$(NAME) > tmp
	diff $(SRCS) tmp
	rm tmp

re:			fclean all

clean:
			${RM} $(OBJS)

fclean: 	clean
			${RM} $(NAME)