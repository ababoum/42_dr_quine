%define	DEC_MAIN	global main
%define	FT		main:
%define	CODE		"%3$cdefine	DEC_MAIN	global main%1$c%3$cdefine	FT		main:%1$c%3$cdefine	CODE		%2$c%4$s%2$c%1$c%1$c%3$cmacro		ft 1%1$c	push rbp%1$c%1$c	mov rdi, filename%1$c	mov rsi, mode%1$c	extern fopen%1$c	call fopen%1$c%1$c	cmp	rax, 0%1$c	je %3$c%3$cerr_case%1$c%1$c	mov rdi, %3$c1%1$c	mov rsi, code%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	mov r8, 37%1$c	mov r9, code%1$c%1$c	xor %3$c1, %3$c1%1$c	extern fprintf%1$c	call fprintf wrt ..plt%1$c%1$c	pop rbp%1$c%1$c	xor %3$c1, %3$c1%1$c	ret%1$c%1$c%3$c%3$cerr_case:%1$c	mov %3$c1, 1%1$c	ret%1$c%3$cendmacro%1$c%1$c%1$csection .text%1$c	;default rel%1$c	DEC_MAIN%1$c; This program will print its own source when run.%1$c%1$cFT%1$c	ft rax%1$c%1$csection .data%1$c	filename	db	%2$cGrace_kid.s%2$c, 0%1$c	mode		db	%2$cw%2$c, 0%1$c	code		db	CODE, 0"

%macro		ft 1
	push rbp

	mov rdi, filename
	mov rsi, mode
	extern fopen
	call fopen

	cmp	rax, 0
	je %%err_case

	mov rdi, %1
	mov rsi, code
	mov rdx, 10
	mov rcx, 34
	mov r8, 37
	mov r9, code

	xor %1, %1
	extern fprintf
	call fprintf wrt ..plt

	pop rbp

	xor %1, %1
	ret

%%err_case:
	mov %1, 1
	ret
%endmacro


section .text
	;default rel
	DEC_MAIN
; This program will print its own source when run.

FT
	ft rax

section .data
	filename	db	"Grace_kid.s", 0
	mode		db	"w", 0
	code		db	CODE, 0