//
//  BNRPortfolio.m
//  Stocks
//
//  Created by edwardtoday on 12/19/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio () {
  NSMutableArray *_holdings;
}
@property(nonatomic) NSArray *holdings;

@end

@implementation BNRPortfolio

- (void)addStockHolding:(BNRStockHolding *)b {
  if (!_holdings) {
    _holdings = [[NSMutableArray alloc] init];
  }
  [_holdings addObject:b];
}

- (void)removeStockHolding:(BNRStockHolding *)b {
  if (_holdings) {
    [_holdings removeObject:b];
  }
}

- (double)totalValue {
  double sum = 0;
  for (BNRStockHolding *b in _holdings) {
    sum += [b valueInDollars];
  }
  return sum;
}

- (NSArray *)topHoldings {
  if (!_holdings) {
    return @[];
  }
  NSSortDescriptor *vid =
      [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
  NSArray *sorted = [_holdings sortedArrayUsingDescriptors:@[ vid ]];
  NSRange range;
  range.location = 0;
  range.length = 3;
  return [sorted subarrayWithRange:range];
}

- (NSArray *)sortedHoldings {
  if (!_holdings) {
    return @[];
  }
  NSSortDescriptor *sym =
      [NSSortDescriptor sortDescriptorWithKey:@"symbol" ascending:YES];
  return [_holdings sortedArrayUsingDescriptors:@[ sym ]];
}

@end
