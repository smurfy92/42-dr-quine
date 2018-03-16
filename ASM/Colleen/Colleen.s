%define SYSCALL(n) 0x2000000 | n

section			.data
hello:
	.str db "coucou %s end", 10, 10, 10, 10, 0
	.test db "Jules", 0
	.len equ $ - hello.str

section .text
	global _main
	extern _printf

_main:
	push rbp
	mov rbp, rsp
	lea rdi, [rel hello.str]
	lea rsi, [rel hello.test]
	call _printf
	leave
	ret