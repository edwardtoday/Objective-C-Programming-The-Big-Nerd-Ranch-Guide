//
//  DateMonger.m
//  DateMonger
//
//  Created by edwardtoday on 12/22/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import "DateMonger.h"

@implementation NSDate (DateMonger)

+ (instancetype)bnrDateMongerWithYear:(int)y month:(int)m day:(int)d {
  NSCalendar *calendar = [NSCalendar currentCalendar];
  NSDateComponents *components = [[NSDateComponents alloc] init];
  [components setDay:d];
  [components setMonth:m];
  [components setYear:y];
  return [calendar dateFromComponents:components];
}

@end
