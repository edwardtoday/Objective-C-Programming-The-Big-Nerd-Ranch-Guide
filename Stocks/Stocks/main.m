//
//  main.m
//  Stocks
//
//  Created by edwardtoday on 12/18/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"
#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    NSMutableArray *arr = [NSMutableArray array];

    BNRStockHolding *sh1 = [[BNRStockHolding alloc] init];
    sh1.purchaseSharePrice = 2.3;
    sh1.currentSharePrice = 4.5;
    sh1.numberOfShares = 40;
    sh1.symbol = @"XYZ";
    [arr addObject:sh1];

    BNRStockHolding *sh2 = [[BNRStockHolding alloc] init];
    sh2.purchaseSharePrice = 12.19;
    sh2.currentSharePrice = 10.56;
    sh2.numberOfShares = 90;
    sh2.symbol = @"ABC";
    [arr addObject:sh2];

    BNRForeignStockHolding *sh3 = [[BNRForeignStockHolding alloc] init];
    [sh3 setPurchaseSharePrice:2.3];
    [sh3 setCurrentSharePrice:4.5];
    [sh3 setNumberOfShares:40];
    sh3.conversionRate = 0.94;
    sh3.symbol = @"LMN";
    [arr addObject:sh3];

    BNRPortfolio *p = [[BNRPortfolio alloc] init];
    for (BNRStockHolding *sh in arr) {
      NSLog(@"Value of this stock holding is %f", [sh valueInDollars]);
      [p addStockHolding:sh];
    }

    NSLog(@"topHoldings: %@", [p topHoldings]);
    NSLog(@"sortedHoldings: %@", [p sortedHoldings]);

    NSLog(@"The portfolio value is %f", [p totalValue]);
    [p removeStockHolding:sh2];
    NSLog(@"The portfolio value is now %f", [p totalValue]);
  }
  //  sleep(100);
  return 0;
}
