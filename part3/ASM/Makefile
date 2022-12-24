NAME = Sully

SRCS = Sully.s

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
	mkdir -p tmp
	cp Sully tmp
	cd tmp ; ./Sully ; ls -al | grep Sully | wc -l
	- diff Sully.s tmp/Sully_5.s
	- diff Sully.s tmp/Sully_4.s
	- diff tmp/Sully_5.s tmp/Sully_0.s
	rm -rf tmp

re:			fclean all

clean:
			${RM} $(OBJS)

fclean: 	clean
			${RM} $(NAME)
			${RM} $(NAME)_*