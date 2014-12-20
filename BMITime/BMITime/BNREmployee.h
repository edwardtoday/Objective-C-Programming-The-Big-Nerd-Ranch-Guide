//
//  BNREmployee.h
//  BMITime
//
//  Created by edwardtoday on 12/19/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import "BNRPerson.h"
#import <Foundation/Foundation.h>

@class BNRAsset;

@interface BNREmployee : BNRPerson

@property(nonatomic) unsigned int employeeID;
@property(nonatomic) NSDate *hireDate;
@property(nonatomic) NSString *lastName;
@property(nonatomic) BNRPerson *spouse;
@property(nonatomic) NSMutableArray *children;
@property(nonatomic, copy) NSSet *assets;
- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (void)removeAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end
