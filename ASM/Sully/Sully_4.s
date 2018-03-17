section .data
hello:
.security db "Sully_5.s", 0
.file db "Sully_%d.s", 0
.bin db "Sully_%d", 0
.comp db "nasm -f macho64 %s", 0
.link db "gcc %s.o -o %s", 0
.exec db "./%s", 0
.str db "section .data%2$chello:%2$c.security db %3$cSully_5.s%3$c, 0%2$c.file db %3$cSully_%%d.s%3$c, 0%2$c.bin db %3$cSully_%%d%3$c, 0%2$c.comp db %3$cnasm -f macho64 %%s%3$c, 0%2$c.link db %3$cgcc %%s.o -o %%s%3$c, 0%2$c.exec db %3$c./%%s%3$c, 0%2$c.str db %3$c%1$s%3$c, 0%2$csection .text%2$cglobal _main%2$cextern _dprintf%2$cextern _sprintf%2$cextern _system%2$c_main:%2$cpush rbp%2$cmov rbp, rsp%2$cmov r12, %4$d%2$ccall check%2$csub rsp , 16%2$clea rdi, [rel rsp]%2$clea rsi, [rel hello.file]%2$cmov rdx, r12%2$ccall _sprintf%2$cmov rdi, rsp%2$cmov rsi, 0x0202%2$cmov rax, 0x2000005%2$cmov rdx, 0x01FF%2$csyscall%2$clea rsi, [rel hello.str]%2$cmov rdi, rax%2$clea rdx, [rel hello.str]%2$cmov rcx, 10%2$cmov r8, 34%2$cmov r9, r12%2$ccall _dprintf%2$cmov rax, 0x2000006%2$csyscall%2$ccmp r12, 0x0%2$cja execution%2$cleave%2$cret%2$ccheck:%2$clea rdi, [rel hello.security]%2$cmov rsi, 0%2$cmov rax, 0x2000033%2$csyscall%2$cdec r12%2$cret%2$ctiti:%2$cdec r12%2$cret%2$cexecution:%2$clea rdx, [rel rsp]%2$csub rsp, 32%2$clea rdi, [rel rsp]%2$clea rsi, [rel hello.comp]%2$ccall _sprintf%2$clea rdi, [rel rsp]%2$ccall _system%2$csub rsp, 32%2$clea rdi, [rel rsp]%2$clea rsi, [rel hello.bin]%2$cmov rdx, r12%2$ccall _sprintf%2$clea rdx , [rel rsp]%2$csub rsp, 32%2$clea rdi, [rel rsp]%2$clea rsi, [rel hello.link]%2$clea rcx , [rel rsp + 32]%2$ccall _sprintf%2$clea rdi, [rel rsp]%2$ccall _system%2$clea rdx, [rel rsp + 32]%2$csub rsp, 32%2$clea rdi, [rel rsp]%2$clea rsi, [rel hello.exec]%2$ccall _sprintf%2$clea rdi, [rel rsp]%2$ccall _system%2$cleave%2$cret%2$c", 0
section .text
global _main
extern _dprintf
extern _sprintf
extern _system
_main:
push rbp
mov rbp, rsp
mov r12, 4
call check
sub rsp , 16
lea rdi, [rel rsp]
lea rsi, [rel hello.file]
mov rdx, r12
call _sprintf
mov rdi, rsp
mov rsi, 0x0202
mov rax, 0x2000005
mov rdx, 0x01FF
syscall
lea rsi, [rel hello.str]
mov rdi, rax
lea rdx, [rel hello.str]
mov rcx, 10
mov r8, 34
mov r9, r12
call _dprintf
mov rax, 0x2000006
syscall
cmp r12, 0x0
ja execution
leave
ret
check:
lea rdi, [rel hello.security]
mov rsi, 0
mov rax, 0x2000033
syscall
dec r12
ret
titi:
dec r12
ret
execution:
lea rdx, [rel rsp]
sub rsp, 32
lea rdi, [rel rsp]
lea rsi, [rel hello.comp]
call _sprintf
lea rdi, [rel rsp]
call _system
sub rsp, 32
lea rdi, [rel rsp]
lea rsi, [rel hello.bin]
mov rdx, r12
call _sprintf
lea rdx , [rel rsp]
sub rsp, 32
lea rdi, [rel rsp]
lea rsi, [rel hello.link]
lea rcx , [rel rsp + 32]
call _sprintf
lea rdi, [rel rsp]
call _system
lea rdx, [rel rsp + 32]
sub rsp, 32
lea rdi, [rel rsp]
lea rsi, [rel hello.exec]
call _sprintf
lea rdi, [rel rsp]
call _system
leave
ret
