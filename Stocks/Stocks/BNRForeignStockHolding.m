//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by edwardtoday on 12/19/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars {
  return [super costInDollars] * self.conversionRate;
}

- (float)valueInDollars {
  return [super valueInDollars] * self.conversionRate;
}

@end
