//
//  main.m
//  DateMonger
//
//  Created by edwardtoday on 12/22/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DateMonger.h"

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    NSDate *date = [NSDate bnrDateMongerWithYear:1988 month:3 day:17];
    NSLog(@"The date created is %@",
          [date descriptionWithLocale:[NSLocale currentLocale]]);
  }
  return 0;
}
