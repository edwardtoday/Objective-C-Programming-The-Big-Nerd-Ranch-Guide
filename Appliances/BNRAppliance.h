//
//  BNRAppliance.h
//  Appliances
//
//  Created by edwardtoday on 12/22/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject {
  NSString *_productName;
}
//@property(nonatomic, copy) NSString *productName;
@property(nonatomic) int voltage;

// The designated initializer
- (instancetype)initWithProductName:(NSString *)pn;

@end
