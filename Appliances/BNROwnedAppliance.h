//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by edwardtoday on 12/22/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance

@property(readonly) NSSet *ownerNames;
// The designated initializer
- (instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n;
- (void)addOwnerName:(NSString *)n;
- (void)removeOwnerName:(NSString *)n;

@end
