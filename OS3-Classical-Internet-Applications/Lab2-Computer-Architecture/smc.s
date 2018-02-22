.global _start

mysterybytes:

.byte 0x05, 0x0f, 0x00, 0x00, 0x00, 0x3c, 0xc0, 0xc7, 0x48, 0x6c, 0x33, 0x33, 0x74, 0xc7, 0xc7, 0x48

_start:

mov $16, %rdx
mov $mysterybytes, %rbx
mov $mystery+15, %rcx
back:
movb (%rbx), %al
movb %al, (%rcx)
inc %rbx
dec %rcx
dec %rdx
jz mystery
jmp back

mystery:

nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
