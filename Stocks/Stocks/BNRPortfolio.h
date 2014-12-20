//
//  BNRPortfolio.h
//  Stocks
//
//  Created by edwardtoday on 12/19/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject

- (void)addStockHolding:(BNRStockHolding *)b;
- (void)removeStockHolding:(BNRStockHolding *)b;
- (double)totalValue;
- (NSArray *)topHoldings;
- (NSArray *)sortedHoldings;

@end
