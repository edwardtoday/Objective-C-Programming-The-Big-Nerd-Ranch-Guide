//
//  main.m
//  TimeAfterTime
//
//  Created by edwardtoday on 12/17/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    NSDate *now = [[NSDate alloc] init];
    NSLog(@"This NSDate object lives at %p", now);
    NSLog(@"The date is %@", now);

    double seconds = [[NSDate date] timeIntervalSince1970];
    NSLog(@"It has been %f seconds since the start of 1970.", seconds);

    NSDate *later = [now dateByAddingTimeInterval:100000];
    NSLog(@"In 100,000 seconds it will be %@", later);

    NSCalendar *cal = [NSCalendar currentCalendar];
    NSLog(@"My calendar is %@", [cal calendarIdentifier]);

    //    // Sending bogus messages to see errors...
    //    double testSeconds = [NSDate timeIntervalSince1970];
    //    NSDate *testNow = [now date];
    //
    //    // Mistyped selector name
    //    testSeconds = [now fooIntervalSince1970];
    //
    //    // Typo! Lowercase 'i' and 's'
    //    testSeconds = [now timeintervalsince1970];
  }
  return 0;
}
