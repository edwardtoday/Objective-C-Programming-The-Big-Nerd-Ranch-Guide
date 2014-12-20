//
//  main.c
//  CountDown
//
//  Created by edwardtoday on 12/16/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#include <readline/readline.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char* argv[]) {
  printf("Where should I start counting?");
  const char* line = readline(NULL);
  int i = atoi(line);
  while (i >= 0) {
    printf("%d\n", i);
    if (i % 5 == 0) {
      printf("Found one!\n");
    }
    i--;
  }
  return 0;
}
