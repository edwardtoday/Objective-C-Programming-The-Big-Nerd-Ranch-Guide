//
//  BNRAsset.m
//  BMITime
//
//  Created by edwardtoday on 12/19/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description {
  // Is holder non-nil?
  if (self.holder) {
    return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", self.label,
                                      self.resaleValue, self.holder];
  } else {
    return [NSString
        stringWithFormat:@"<%@: $%d unassigned>", self.label, self.resaleValue];
  }
}

- (void)dealloc {
  NSLog(@"deallocating %@", self);
}

@end
