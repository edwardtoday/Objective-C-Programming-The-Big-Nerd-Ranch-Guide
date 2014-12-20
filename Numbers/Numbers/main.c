//
//  main.c
//  Numbers
//
//  Created by edwardtoday on 12/16/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char* argv[]) {
  int x = 255;
  printf("x is %d.\n", x);
  printf("In octal, x is %o.\n", x);
  printf("In hexadecimal, x is %x.\n", x);
  long y = 255;
  printf("y is %ld.\n", y);
  printf("In octal, y is %lo.\n", y);
  printf("In hexadecimal, y is %lx.\n", y);

  unsigned long z = 255;
  printf("z is %lu.\n", z);
  // Octal and hex already assume the number was unsigned
  printf("In octal, z is %lo.\n", z);
  printf("In hexadecimal, z is %lx.\n", z);

  printf("3 * 3 + 5 * 2 = %d\n", 3 * 3 + 5 * 2);
  printf("11 / 3 = %d remainder of %d \n", 11 / 3, 11 % 3);
  printf("11 / 3.0 = %f\n", 11 / (float)3);
  printf("The absolute value of -5 is %d\n", abs(-5));

  double d = 12345.6789;
  printf("d is %.2f\n", d);
  printf("d is %.2e\n", d);

  return 0;
}
