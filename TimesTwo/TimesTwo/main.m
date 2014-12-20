//
//  main.m
//  TimesTwo
//
//  Created by edwardtoday on 12/17/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    NSDate *currentTime = [NSDate date];
    NSLog(@"CurrentTime's value is %p", currentTime);

    NSDate *startTime = currentTime;
    sleep(2);

    currentTime = [NSDate date];
    NSLog(@"currentTime's value is now %p", currentTime);
    NSLog(@"The address of the origintal object is %p", startTime);

    currentTime = nil;
    NSLog(@"currentTime's value is %p", currentTime);
  }
  return 0;
}
