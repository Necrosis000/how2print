section .data
    message db 'Hello World',0

section .text
    global _start

_start:
    ; WriteFile(0, message, 13, null, 0)
    mov eax, 0x40003
    mov ebx, 0
    mov ecx, message
    mov edx, 13
    int 0x21