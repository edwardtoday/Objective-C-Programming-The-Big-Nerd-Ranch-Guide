//
//  BNREmployee.m
//  BMITime
//
//  Created by edwardtoday on 12/19/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

// A class extension
@interface BNREmployee () {
  NSMutableSet *_assets;
}
@property(nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

// Accessors for assets properties
- (void)setAssets:(NSArray *)assets {
  _assets = [assets mutableCopy];
}

- (NSArray *)assets {
  return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a {
  if (!_assets) {
    _assets = [[NSMutableSet alloc] init];
  }
  [_assets addObject:a];
  [a setHolder:self];
}

- (void)removeAsset:(BNRAsset *)a {
  if (_assets) {
    [_assets removeObject:a];
  }
}

- (unsigned int)valueOfAssets {
  unsigned int sum = 0;
  for (BNRAsset *a in _assets) {
    sum += [a resaleValue];
  }
  return sum;
}

- (double)yearsOfEmployment {
  NSTimeInterval seconds = 0;
  // Do I have a non-nil hireDate?
  if (self.hireDate) {
    // NSTimeInterval is the same as double
    NSDate *now = [NSDate date];
    seconds = [now timeIntervalSinceDate:self.hireDate];
  }
  return seconds / 31557600.0; // seconds per year
}

- (float)bodyMassIndex {
  float normalBMI = [super bodyMassIndex];
  return normalBMI * 0.9;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"<Employee %u: $%u in assets>",
                                    self.employeeID, self.valueOfAssets];
}

- (void)dealloc {
  NSLog(@"deallocating %@", self);
}

@end
