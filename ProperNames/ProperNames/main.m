//
//  main.m
//  ProperNames
//
//  Created by edwardtoday on 12/18/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    NSString *nameString =
        [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                  encoding:NSUTF8StringEncoding
                                     error:NULL];
    NSArray *names = [nameString componentsSeparatedByString:@"\n"];
    NSLog(@"Loaded %lu names.", [names count]);

    NSString *wordString =
        [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                  encoding:NSUTF8StringEncoding
                                     error:NULL];
    NSArray *words = [wordString componentsSeparatedByString:@"\n"];
    NSLog(@"Loaded %lu words.", [words count]);

    int count = 0;
    for (NSString *n in names) {
      NSString *lowercase_n = [n lowercaseString];
      NSUInteger index = [words indexOfObject:lowercase_n];
      if (index != NSNotFound) {
        NSLog(@"Proper name %@ is also a regular word %@", n, words[index]);
        count++;
      }
    }
    NSLog(@"Found %d matches.", count);
  }
  return 0;
}
