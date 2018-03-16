%define SYSCALL(n) 0x2000000 | n
section .data
hello:
.str db "; commentaire%2$csection .data%2$chello:%2$c.str db %3$c%1$s%3$c, 0%2$csection .text%2$cglobal _main%2$cextern _printf%2$c_main:%2$cpush rbp; stack save%2$cmov rbp, rsp%2$clea rdi, [rel hello.str]%2$clea rsi, [rel hello.str]%2$cmov rdx, 10%2$cmov rcx, 34%2$ccall _printf%2$cleave%2$ccall end%2$cend:%2$cret", 0
.file db "Grace_kid.s", 0
section .text
global start
extern _fprintf
start:
push rbp; stack save
mov rbp, rsp
mov rdi, [rel hello.file]
mov rsi, 119
mov rax, SYSCALL(5)
syscall
mov rdi, rax
lea rsi, [rel hello.str]
mov rdx, 10
mov rcx, 34
call _fprintf
leave
ret