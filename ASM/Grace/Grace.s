;commentaire bitch
%define STR ";commentaire bitch%2$c%%define STR %3$c%1$s%3$c%2$c%%define DECLARE_MAIN global _main%2$c%%define INJECT_MAIN _main:%2$csection .data%2$chello:%2$c.str db STR, 0%2$c.file db %3$cGrace_kid.s%3$c, 0%2$csection .text%2$cglobal start%2$cextern _dprintf%2$cDECLARE_MAIN%2$cstart:%2$cINJECT_MAIN%2$cpush rbp%2$cmov rbp, rsp%2$clea rdi, [rel hello.file]%2$cmov rsi, 0x0202%2$cmov rax, 0x2000005%2$csyscall%2$cmov rdi, rax%2$clea rsi, [rel hello.str]%2$clea rdx, [rel hello.str]%2$cmov rcx, 10%2$cmov r8, 34%2$ccall _dprintf%2$cleave%2$cret"
%define DECLARE_MAIN global _main
%define INJECT_MAIN _main:
section .data
hello:
.str db STR, 0
.file db "Grace_kid.s", 0
section .text
global start
extern _dprintf
DECLARE_MAIN
start:
INJECT_MAIN
push rbp
mov rbp, rsp
lea rdi, [rel hello.file]
mov rsi, 0x0202
mov rax, 0x2000005
syscall
mov rdi, rax
lea rsi, [rel hello.str]
lea rdx, [rel hello.str]
mov rcx, 10
mov r8, 34
call _dprintf
leave
ret