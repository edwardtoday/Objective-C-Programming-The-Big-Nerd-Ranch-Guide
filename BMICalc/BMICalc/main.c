//
//  main.c
//  BMICalc
//
//  Created by edwardtoday on 12/17/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

// Here is the declaration of the type Person
typedef struct {
  float heightInMeters;
  int weightInKilos;
} Person;

float bodyMassIndex(Person *p) {
  return p->weightInKilos / (p->heightInMeters * p->heightInMeters);
}

int main(int argc, const char *argv[]) {
  // Allocate memory for one Person struct
  Person *mikey = (Person *)malloc(sizeof(Person));

  mikey->heightInMeters = 1.7;
  mikey->weightInKilos = 96;

  float mikeyBMI = bodyMassIndex(mikey);
  printf("mikey has a BMI of %f\n", mikeyBMI);

  // Let the memory be recycled
  free(mikey);

  // Forget where it was
  mikey = NULL;

  return 0;
}
