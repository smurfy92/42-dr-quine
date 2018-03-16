%define STR ""
%define DECLARE_MAIN global _main
%define INJECT_MAIN _main:
section .data
hello:
.str db "toto", 0
.file db "Grace_kid.s", 0
section .text
global start
extern _fprintf
DECLARE_MAIN
start:
INJECT_MAIN
push rbp; stack save
mov rbp, rsp
sub rsp, 8
mov rdi, [rel hello.file]
mov rsi, 0x0000002
mov rax, 0x2000005
syscall
; mov rdi, rax
; lea rsi, [rel hello.str]
; call _fprintf
; leave
ret