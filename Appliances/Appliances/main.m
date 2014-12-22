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
    //[a setProductName:@"Washing Machine"];
    [a setValue:@"Washing Machine" forKey:@"productName"];
    //    [a setVoltage:240];
    [a setValue:[NSNumber numberWithInt:240] forKey:@"voltage"];
    NSLog(@"a is %@", a);
    BNROwnedAppliance *o =
        [[BNROwnedAppliance alloc] initWithProductName:@"Mac"
                                        firstOwnerName:@"edwardtoday"];
    NSLog(@"o is %@", o);
    NSLog(@"the product name is %@", [a valueForKey:@"productName"]);

    // Executing the next line will throw an exception
    //    BNRWallSafe *w = [[BNRWallSafe alloc] init];
  }
  return 0;
}
