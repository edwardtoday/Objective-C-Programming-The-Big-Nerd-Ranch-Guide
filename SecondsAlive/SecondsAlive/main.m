//
//  main.m
//  SecondsAlive
//
//  Created by edwardtoday on 12/17/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setYear:1988];
    [comps setMonth:3];
    [comps setDay:17];
    [comps setHour:19];
    [comps setMinute:30];
    [comps setSecond:0];
    NSCalendar *cal = [[NSCalendar alloc]
        initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDate *dateOfBirth = [cal dateFromComponents:comps];

    double secondsAlive = [[NSDate date] timeIntervalSinceDate:dateOfBirth];
    NSLog(@"I have been alive for %f seconds!", secondsAlive);
  }
  return 0;
}
