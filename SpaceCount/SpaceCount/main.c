//
//  main.c
//  SpaceCount
//
//  Created by edwardtoday on 12/23/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

unsigned int spaceCount(const char *string) {
  if (!string) {
    return 0;
  }
  size_t len = strlen(string);
  const char sp = ' ';
  unsigned int sum = 0;
  for (size_t i = 0; i < len; i++) {
    if (string[i] == sp) {
      sum++;
    }
  }
  return sum;
}

int main(int argc, const char *argv[]) {
  const char *sentence = "He was not in the cab at the time.";
  printf("\"%s\" has %d spaces\n", sentence, spaceCount(sentence));
  return 0;
}
