//
//  main.m
//  Appliances
//
//  Created by edwardtoday on 12/22/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"
#import "BNROwnedAppliance.h"
#import "BNRWallSafe.h"

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    BNRAppliance *a = [[BNRAppliance alloc] init];
    NSLog(@"a is %@", a);
    [a setProductName:@"Washing Machine"];
    [a setVoltage:240];
    NSLog(@"a is %@", a);
    BNROwnedAppliance *o =
        [[BNROwnedAppliance alloc] initWithProductName:@"Mac"
                                        firstOwnerName:@"edwardtoday"];
    NSLog(@"o is %@", o);

    // Executing the next line will throw an exception
    //    BNRWallSafe *w = [[BNRWallSafe alloc] init];
  }
  return 0;
}
