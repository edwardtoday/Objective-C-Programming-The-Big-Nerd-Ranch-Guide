//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by edwardtoday on 12/22/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance () {
  NSMutableSet *_ownerNames;
}

@end

@implementation BNROwnedAppliance

- (instancetype)initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString *)n {
  // Call the superclass's initializer
  if (self = [super initWithProductName:pn]) {
    // Create a set to hold owners' names
    _ownerNames = [[NSMutableSet alloc] init];

    // Is the first owner name non-nil?
    if (n) {
      [_ownerNames addObject:n];
    }
  }
  // Return a pointer to the new object
  return self;
}

- (void)addOwnerName:(NSString *)n {
  [_ownerNames addObject:n];
}

- (void)removeOwnerName:(NSString *)n {
  [_ownerNames removeObject:n];
}

// property ownerNames is marked readonly, thus no setter will be created.
// Here we override the getter to return a immutable copy of the mutable
// instance variable
- (NSSet *)ownerNames {
  return [_ownerNames copy];
}

- (instancetype)initWithProductName:(NSString *)pn {
  return [self initWithProductName:pn firstOwnerName:nil];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"<%@: %d volts, %@>", self.productName,
                                    self.voltage, [self ownerNames]];
}

@end
