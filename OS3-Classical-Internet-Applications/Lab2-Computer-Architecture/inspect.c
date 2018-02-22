#include <stdio.h>

int main() {
  unsigned long a[4] = {0, 0, 0, 0};
  int i, j;
  char c;

  asm volatile(".byte 15;.byte 162"
               : "+a"(a[0]), "+b"(a[1]), "+d"(a[2]), "+c"(a[3])
  );

  for (i = 1; i < 4 ; i++) {
    for (j = 0; j < 4; j++) {
      c = a[i] >> (8 * j);
      if (c < 32) c = 32;
      if (c > 126) c = 126;
      putchar(c);
    }
  }

  printf("\n");

  return 42;
}
