//
//  main.m
//  ImageFetch
//
//  Created by edwardtoday on 12/19/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    NSURL *url =
        [NSURL URLWithString:@"http://www.google.com/images/logo/ps_logo2.png"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSError *error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:request
                                         returningResponse:NULL
                                                     error:&error];

    if (!data) {
      NSLog(@"fetch failed: %@", [error localizedDescription]);
      return 1;
    }

    NSLog(@"The file is %lu bytes", (unsigned long)[data length]);

    BOOL written = [data writeToFile:@"/tmp/google.png"
                             options:NSDataWritingAtomic
                               error:&error];

    if (!written) {
      NSLog(@"write failed: %@", [error localizedDescription]);
      return 1;
    }
    NSLog(@"Success!");

    NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
    NSLog(@"The file read from the disk has %lu bytes",
          (unsigned long)[readData length]);
  }
  return 0;
}
