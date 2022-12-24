%define	n	5

section .text
	default rel
	global main

; This program will print its own source when run.
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
	mov r8, 37
	mov r9, code

	xor rax, rax
	extern fprintf
	call fprintf wrt ..plt

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
	code:	db	"%3$cdefine	n	5", 0
	filename:	db	"Sully_", n - 1 + 48, ".s", 0
	command1:	db  "nasm -f elf64 Sully_", n - 1 + 48, ".s && clang Sully_", n - 1 + 48, ".o -o Sully_" , n - 1 + 48, " && echo -n", 0
	command2:	db	"./Sully_", n - 1 + 48, 0
	mode:	db	"w", 0