%macro COMMENT 0
    eax: syscall - 1 is stdout
    ecx: pointer to register that has helloworld
    edx: length of helloworld
%endmacro 



section .text

global _start

_start:
    mov eax, 4 ;4 is sys_write
    mov ebx, 1 ;1 is stdout
    mov ecx, msg ;point to message
    mov edx, 14 ;msg length
    int 0x80 ;interrupt

    mov eax, 1
    xor ebx, ebx ;forces ebx to 0
    int 0x80


section .data
    ;msg is the variable, db is the type (just bytes)
    msg db 'Hello World!', 0x0A ;0 at the end to terminate string