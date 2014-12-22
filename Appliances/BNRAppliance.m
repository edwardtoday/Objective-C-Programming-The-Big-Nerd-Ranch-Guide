//
//  BNRAppliance.m
//  Appliances
//
//  Created by edwardtoday on 12/22/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

- (instancetype)init {
  return [self initWithProductName:@"Unknown"];
}

- (instancetype)initWithProductName:(NSString *)pn {
  if (self = [super init]) {
    _productName = [pn copy];
    _voltage = 120;
  }
  return self;
}

- (NSString *)description {
  return [NSString
      stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}

@end
