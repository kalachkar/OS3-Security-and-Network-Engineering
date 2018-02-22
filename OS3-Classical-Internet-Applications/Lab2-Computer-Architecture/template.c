#define OS3_ASM \
    "shrq $1, %%rax;" \
    "sarq $1, %%rbx;" \
    "shlq $1, %%rcx;" \
    "salq $1, %%rdx;"

#include <inttypes.h>
#include <stdio.h>

int main(void) {

uint64_t rax = 0xFEDCBA9876543210;
uint64_t rbx = 0x76543210;
uint64_t rcx = 0x3210;
uint64_t rdx = 0x10;

printf("Before assembly code...\n");
printf("rax: %016" PRIx64 "\n", rax);
printf("rbx: %016" PRIx64 "\n", rbx);
printf("rcx: %016" PRIx64 "\n", rcx);
printf("rdx: %016" PRIx64 "\n", rdx);
printf("\n");

asm volatile (
    OS3_ASM
    : "+a" (rax), "+b" (rbx), "+c" (rcx), "+d" (rdx)
);

printf("After assembly code...\n");
printf("rax: %016" PRIx64 "\n", rax);
printf("rbx: %016" PRIx64 "\n", rbx);
printf("rcx: %016" PRIx64 "\n", rcx);
printf("rdx: %016" PRIx64 "\n", rdx);

}
