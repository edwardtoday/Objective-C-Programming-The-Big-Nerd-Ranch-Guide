//
//  BNRStockHolding.h
//  Stocks
//
//  Created by edwardtoday on 12/18/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
@property(nonatomic) float purchaseSharePrice;
@property(nonatomic) float currentSharePrice;
@property(nonatomic) int numberOfShares;
@property(nonatomic) NSString *symbol;

- (float)costInDollars;
- (float)valueInDollars;

@end
