//
//  main.c
//  Triangle
//
//  Created by edwardtoday on 12/16/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angleOne, float angleTwo) {
  return 180.0 - angleOne - angleTwo;
}

int main(int argc, const char* argv[]) {
  float angleA = 30.0;
  float angleB = 60.0;
  float angleC = remainingAngle(angleA, angleB);
  printf("The third angle is %.2f\n", angleC);
  return 0;
}
