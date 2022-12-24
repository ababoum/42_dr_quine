%define	n	6

section .text
	default rel
	global main

main:
	push rbp

	mov rdi, filename
	mov rsi, mode
	extern fopen
	call fopen

	cmp rax, 0
	je _err_case

	mov rdi, rax
	mov rsi, code
	mov rdx, 10
	mov rcx, 34
	mov r8, n - 1
	mov r9, code

	xor rax, rax
	extern fprintf
	call fprintf wrt ..plt

	extern fcloseall
	call fcloseall

	mov rdi, command1
	extern system
	call system

	mov rdi, n - 1
	cmp rdi, 0
	jg _exe

_exit:
	xor rax, rax
	pop rbp
	ret

_err_case:
	pop rbp
	mov rax, 1
	ret

_exe:
	mov rdi, command2
	call system
	jmp _exit


section .data
	code:	db	"%%define	n	%3$d%1$c%1$csection .text%1$c	default rel%1$c	global main%1$c%1$cmain:%1$c	push rbp%1$c%1$c	mov rdi, filename%1$c	mov rsi, mode%1$c	extern fopen%1$c	call fopen%1$c%1$c	cmp rax, 0%1$c	je _err_case%1$c%1$c	mov rdi, rax%1$c	mov rsi, code%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	mov r8, n - 1%1$c	mov r9, code%1$c%1$c	xor rax, rax%1$c	extern fprintf%1$c	call fprintf wrt ..plt%1$c%1$c	extern fcloseall%1$c	call fcloseall%1$c%1$c	mov rdi, command1%1$c	extern system%1$c	call system%1$c%1$c	mov rdi, n - 1%1$c	cmp rdi, 0%1$c	jg _exe%1$c%1$c_exit:%1$c	xor rax, rax%1$c	pop rbp%1$c	ret%1$c%1$c_err_case:%1$c	pop rbp%1$c	mov rax, 1%1$c	ret%1$c%1$c_exe:%1$c	mov rdi, command2%1$c	call system%1$c	jmp _exit%1$c%1$c%1$csection .data%1$c	code:	db	%2$c%4$s%2$c, 0%1$c%1$c	filename:	db	%2$cSully_%2$c, n - 1 + 48, %2$c.s%2$c, 0%1$c	command1:	db	%2$cnasm -f elf64 Sully_%2$c, n - 1 + 48, %2$c.s && clang Sully_%2$c, n - 1 + 48, %2$c.o -o Sully_%2$c, n - 1 + 48, %2$c && echo -n%2$c, 0%1$c	command2:	db	%2$c./Sully_%2$c, n - 1 + 48, 0%1$c	mode:	db	%2$cw%2$c, 0", 0

	filename:	db	"Sully_", n - 1 + 48, ".s", 0
	command1:	db	"nasm -f elf64 Sully_", n - 1 + 48, ".s && clang Sully_", n - 1 + 48, ".o -o Sully_", n - 1 + 48, " && echo -n", 0
	command2:	db	"./Sully_", n - 1 + 48, 0
	mode:	db	"w", 0