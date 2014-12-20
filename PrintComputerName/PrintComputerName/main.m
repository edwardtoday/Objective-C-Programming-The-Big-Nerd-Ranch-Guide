//
//  main.m
//  PrintComputerName
//
//  Created by edwardtoday on 12/17/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    NSHost *host = [NSHost currentHost];
    NSString *name = [host localizedName];
    NSLog(@"The name of current host is %@", name);
  }
  return 0;
}
