//
//  main.c
//  WhatDate
//
//  Created by edwardtoday on 12/17/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char *argv[]) {
  time_t current = time(NULL);
  time_t then = current + 4000000;
  struct tm tm_then;
  localtime_r(&then, &tm_then);
  printf("The date will be %02d-%02d-%d %s in 4 million seconds.\n",
         tm_then.tm_mon + 1, tm_then.tm_mday, tm_then.tm_year + 1900,
         tm_then.tm_zone);
  return 0;
}
