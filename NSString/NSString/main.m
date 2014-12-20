//
//  main.m
//  NSString
//
//  Created by edwardtoday on 12/18/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    NSString *slogan = @"I \u2661 Shanghai!";
    NSLog(@"length = %lu", (unsigned long)[slogan length]);
    NSString *dateString =
        [NSString stringWithFormat:@"The date is %@.", [NSDate date]];
    NSLog(@"%@ %@", dateString, slogan);
    NSString *boldSlogan = [slogan uppercaseString];
    NSLog(@"%@", boldSlogan);

    NSString *listOfNames = @"A,B,C,D";
    NSString *name = @"c";
    NSRange match =
        [listOfNames rangeOfString:name options:NSCaseInsensitiveSearch];
    if (match.location == NSNotFound) {
      NSLog(@"No match found!");
    } else {
      NSLog(@"Match found at %lu: %@", (unsigned long)match.location,
            [listOfNames substringWithRange:match]);
    }
  }
  return 0;
}
