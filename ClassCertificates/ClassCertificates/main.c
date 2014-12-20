//
//  main.c
//  ClassCertificates
//
//  Created by edwardtoday on 12/16/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>

void congratulatesStudent(char *student, char *course, int numDays) {
  printf("%s has done as much %s Programming as I could fit into %d days.\n",
         student, course, numDays);
}

int main(int argc, const char *argv[]) {
  congratulatesStudent("Kate", "Cocoa", 5);
  sleep(2);
  congratulatesStudent("Bo", "Objective-C", 2);
  sleep(2);
  congratulatesStudent("Mike", "Python", 5);
  sleep(2);
  congratulatesStudent("Liz", "iOS", 5);

  printf("\"It doesn't happen all at once,\" said the Skin Horse.\n");

  return 0;
}
