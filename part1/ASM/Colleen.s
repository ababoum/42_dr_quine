section .text
	default rel
	extern printf
	global main

; This program will print its own source when run.
main:
	push rbp

	mov rdi, str
	mov rsi, str
	mov rdx, 34
	mov rcx, 10

	; Call printf
	xor rax, rax
	call printf wrt ..plt

	pop rbp

	call ft
	ret

ft:
	xor rax, rax
	mov rax, 0
	ret

section .data
	str:	db	"section .text%3$c	default rel%3$c	extern printf%3$c	global main%3$c%3$c; This program will print its own source when run.%3$cmain:%3$c	push rbp%3$c%3$c	mov rdi, str%3$c	mov rsi, str%3$c	mov rdx, 34%3$c	mov rcx, 10%3$c%3$c	; Call printf%3$c	xor rax, rax%3$c	call printf wrt ..plt%3$c%3$c	pop rbp%3$c%3$c	call ft%3$c	ret%3$c%3$cft:%3$c	xor rax, rax%3$c	mov rax, 0%3$c	ret%3$c%3$csection .data%3$c	str:	db	%2$c%1$s%2$c, 0", 0