//
//  main.c
//  bitwize
//
//  Created by edwardtoday on 12/22/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char *argv[]) {
  unsigned char a = 0x3c;
  unsigned char b = 0xa9;
  unsigned char c = a | b;

  printf("Hex: %x | %x = %x\n", a, b, c);
  printf("Decimal %d | %d = %d\n", a, b, c);

  unsigned char d = a & b;
  printf("Hex: %x & %x = %x\n", a, b, d);
  printf("Decimal: %d & %d = %d\n", a, b, d);

  unsigned char e = a ^ b;
  printf("Hex: %x ^ %x = %x\n", a, b, e);
  printf("Decimal: %d ^ %d = %d\n", a, b, e);

  unsigned char f = ~b;
  printf("Hex: The complement of %x is %x\n", b, f);
  printf("Decimal: The complement of %d is %d\n", b, f);

  unsigned char g = a << 2;
  printf("Hex: %x shifted left two places is %x\n", a, g);
  printf("Decimal: %d shifted left two places is %d\n", a, g);

  unsigned char h = a >> 1;
  printf("Hex: %x shifted right one place is %x\n", a, h);
  printf("Decimal: %d shifted right one place is %d\n", a, h);

  uint64_t challenge = 1;

  for (int i = 0; i < 64; i++) {
    if (i % 2 == 0) {
      challenge = challenge << 1;
    } else {
      challenge = challenge << 1;
      challenge++;
    }
  }

  printf("Unsigned 64-bit integer that every other bit is turned on is: %llu\n",
         challenge);
  return 0;
}
