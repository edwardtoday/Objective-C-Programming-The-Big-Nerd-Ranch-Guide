//
//  main.c
//  pbr
//
//  Created by edwardtoday on 12/17/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr) {
  // This function assumes meter is non-negative.

  // Convert the number of meters into a floating-point number of feet
  double rawFeet = meters * 3.281; // e.g. 2.4536

  // How many complete feet as an unsigned int?
  unsigned int feet = (unsigned int)floor(rawFeet);

  // Store the number of feet at the supplied address
  if (ftPtr) {
    printf("Storeing %u to the address %p\n", feet, ftPtr);
    *ftPtr = feet;
  }

  // Calculate inches
  double fractionalFoot = rawFeet - feet;
  double inches = fractionalFoot * 12.0;

  // Store the number of inches at the supplied address
  if (inPtr) {
    printf("Storing %.2f to the address %p\n", inches, inPtr);
    *inPtr = inches;
  }
}

void metersToFeetAndInchesByModf(double meters, unsigned int *ftPtr,
                                 double *inPtr) {
  double rawFeet = meters * 3.281;
  double feet;
  if (ftPtr && inPtr) {
    *inPtr = modf(rawFeet, &feet);
    *ftPtr = feet;
    *inPtr *= 12.0;
  }
}

int main(int argc, const char *argv[]) {
  double pi = 3.14;
  double integerPart;
  double fractionPart;

  // Pass the address of integerPart as an argument
  fractionPart = modf(pi, &integerPart);

  // Find the value stored in integerPart
  printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart,
         fractionPart);

  double meters = 3.0;
  unsigned int feet;
  double inches;

  metersToFeetAndInchesByModf(meters, &feet, &inches);
  printf("%.1f meters is equal to %d feet and %.1f inches.\n", meters, feet,
         inches);
  return 0;
}
