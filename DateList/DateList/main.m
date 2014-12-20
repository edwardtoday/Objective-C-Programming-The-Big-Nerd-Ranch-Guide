//
//  main.m
//  DateList
//
//  Created by edwardtoday on 12/18/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    // Create three NSDate objects
    NSDate *now = [NSDate date];
    NSDate *tomorrow = [now dateByAddingTimeInterval:24 * 60 * 60];
    NSDate *yesterday = [now dateByAddingTimeInterval:-24 * 60 * 60];

    // Create an array containing all three
    NSArray *dateList = @[ now, tomorrow, yesterday ];

    // Print a couple of dates
    NSLog(@"The first date is %@", dateList[0]);
    NSLog(@"The third date is %@", dateList[2]);

    // How many dates are in the array?
    NSLog(@"There are %lu dates", [dateList count]);

    //    NSLog(@"The fourth date is %@", dateList[3]); // Crash!

    // Iterate over the array
    NSUInteger dateCount = [dateList count];
    for (int i = 0; i < dateCount; i++) {
      NSDate *d = dateList[i];
      NSLog(@"Here is a date: %@", d);
    }

    // Fast enumeration
    for (NSDate *d in dateList) {
      NSLog(@"Fast! Here is a date: %@", d);
    }

    // Create an empty mutable array
    NSMutableArray *dateListMutable = [NSMutableArray array];

    // Add two dates to the array
    [dateListMutable addObject:now];
    [dateListMutable addObject:tomorrow];

    // Add yesterday at the beginning of the list
    [dateListMutable insertObject:yesterday atIndex:0];

    // Iterate over the array
    for (NSDate *d in dateListMutable) {
      NSLog(@"Mutable! Here is a date: %@", d);
    }

    // Remove yesterday
    [dateListMutable removeObjectAtIndex:0];
    NSLog(@"Now the first date is %@", dateListMutable[0]);
  }
  return 0;
}
