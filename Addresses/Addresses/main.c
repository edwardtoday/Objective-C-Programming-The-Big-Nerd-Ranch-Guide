//
//  main.c
//  Addresses
//
//  Created by edwardtoday on 12/17/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char *argv[]) {
  int i = 17;
  int *addressOfI = &i;
  printf("i stores its value at %p\n", addressOfI);
  printf("this function starts at %p\n", main);
  printf("the int stored at addressOfI is %d\n", *addressOfI);
  *addressOfI = 89;
  printf("Now i is %d\n", i);
  printf("An int is %zu bytes\n", sizeof(int));
  printf("A pointer is %zu bytes\n", sizeof(addressOfI));

  float *myPointer;
  // Set myPointer to NULL for now, I'll store an address there
  // later in the program
  myPointer = NULL;

  // Has myPointer been set?
  if (myPointer) {
    // myPointer is not NULL
  } else {
    // myPointer is NULL
  }

  float f = 3.14;
  printf("A float is %zu bytes\n", sizeof(f));

  short smin = 0x8000;
  short smax = 0x7fff;
  unsigned short umax = 0xffff;
  printf("Minimum signed short is %d\n", smin);
  printf("Maximum signed short is %d\n", smax);
  printf("Maximum unsigned short is %d\n", umax);
  return 0;
}
