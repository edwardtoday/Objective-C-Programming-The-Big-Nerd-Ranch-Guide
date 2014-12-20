//
//  main.c
//  Squarer
//
//  Created by edwardtoday on 12/16/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#include <stdio.h>

void printSquare(int num) {
  printf("\"%d\" squared is \"%d\".\n", num, num * num);
}

int main(int argc, const char* argv[]) {
  printSquare(5);
  return 0;
}
