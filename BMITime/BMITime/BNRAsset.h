//
//  BNRAsset.h
//  BMITime
//
//  Created by edwardtoday on 12/19/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNREmployee;

@interface BNRAsset : NSObject

@property(nonatomic, copy) NSString *label;
@property(nonatomic, weak) BNREmployee *holder;
@property(nonatomic) unsigned int resaleValue;

@end
