//
//  BNRPerson.m
//  BMITime
//
//  Created by edwardtoday on 12/18/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (float)heightInMeters {
  return _heightInMeters;
}

- (void)setHeightInMeters:(float)h {
  _heightInMeters = h;
}

- (int)weightInKilos {
  return _weightInKilos;
}

- (void)setWeightInKilos:(int)w {
  _weightInKilos = w;
}

- (float)bodyMassIndex {
  float h = [self heightInMeters];
  float w = [self weightInKilos];
  return w / (h * h);
}

- (void)addYourselfToArray:(NSMutableArray *)theArray {
  [theArray addObject:self];
}

@end
