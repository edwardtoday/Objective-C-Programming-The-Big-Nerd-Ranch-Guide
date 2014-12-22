//
//  main.m
//  PropertyList
//
//  Created by edwardtoday on 12/22/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    NSMutableArray *array = [[NSMutableArray alloc] init];

    NSMutableDictionary *dict;

    dict = [NSMutableDictionary dictionary];
    [dict setObject:@"I am a string" forKey:@"string"];
    [dict setObject:[NSNumber numberWithInt:10] forKey:@"integer"];
    [dict setObject:[NSNumber numberWithFloat:3.14] forKey:@"float"];
    [dict setObject:[NSNumber numberWithBool:YES] forKey:@"boolean"];
    [dict setObject:[NSDate date] forKey:@"date"];
    [dict setObject:[NSData dataWithContentsOfFile:@"/etc/networks"]
             forKey:@"data"];
    [array addObject:dict];

    dict = [NSMutableDictionary dictionary];
    [dict setObject:@"I am another string" forKey:@"string"];
    [dict setObject:[NSNumber numberWithInt:120] forKey:@"integer"];
    [dict setObject:[NSNumber numberWithFloat:2.71828] forKey:@"float"];
    [dict setObject:[NSNumber numberWithBool:NO] forKey:@"boolean"];
    [dict setObject:[NSDate dateWithTimeIntervalSinceNow:202020]
             forKey:@"date"];
    [dict setObject:[NSData dataWithContentsOfFile:@"/etc/ssh_config"]
             forKey:@"data"];
    [array addObject:dict];

    [array writeToFile:@"/tmp/propertylist.plist" atomically:YES];

    NSArray *plist =
        [NSArray arrayWithContentsOfFile:@"/tmp/propertylist.plist"];
    NSLog(@"%@", plist);
  }
  return 0;
}
