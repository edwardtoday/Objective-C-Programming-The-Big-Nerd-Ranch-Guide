//
//  main.m
//  NewCountDown
//
//  Created by edwardtoday on 12/18/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <readline/readline.h>
#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    NSLog(@"Where do I start counting?");
    const char *line = readline(NULL);
    NSString *start =
        [NSString stringWithCString:line encoding:NSUTF8StringEncoding];
    NSInteger i = [start integerValue];
    do {
      NSLog(@"%d", (int)i);
      if (i % 5 == 0) {
        NSLog(@"Found one!");
      }
      i--;
    } while (i >= 0);
  }
  return 0;
}
