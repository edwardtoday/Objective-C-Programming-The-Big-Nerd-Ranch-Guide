//
//  BNRStockHolding.m
//  Stocks
//
//  Created by edwardtoday on 12/18/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)costInDollars {
  return _purchaseSharePrice * _numberOfShares;
}

- (float)valueInDollars {
  return _currentSharePrice * _numberOfShares;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"BNRStockHolding: %@ $%f", _symbol,
                                    [self valueInDollars]];
}

@end
