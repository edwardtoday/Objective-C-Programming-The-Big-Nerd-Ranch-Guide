//
//  main.m
//  Callbacks
//
//  Created by edwardtoday on 12/20/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"
#import "BNRObserver.h"

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    BNRLogger *logger = [[BNRLogger alloc] init];

    //    [[NSNotificationCenter defaultCenter]
    //        addObserver:logger
    //           selector:@selector(zoneChange:)
    //               name:NSSystemTimeZoneDidChangeNotification
    //             object:nil];

    // Chapter 28 Challenge 2: using a block with NSNotificationCenter
    [[NSNotificationCenter defaultCenter]
        addObserverForName:NSSystemTimeZoneDidChangeNotification
                    object:nil
                     queue:nil
                usingBlock:^(NSNotification *n) {
                    NSLog(@"System timezone changed: %@", n);
                }];

    NSURL *url = [NSURL
        URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    __unused NSURLConnection *fetchConn =
        [[NSURLConnection alloc] initWithRequest:request
                                        delegate:logger
                                startImmediately:YES];

    __unused NSTimer *timer =
        [NSTimer scheduledTimerWithTimeInterval:2.0
                                         target:logger
                                       selector:@selector(updateLastTime:)
                                       userInfo:nil
                                        repeats:YES];

    __unused BNRObserver *ob = [[BNRObserver alloc] init];

    // I want to know the new value and the old value whenever lastTime is
    // changed
    [logger
        addObserver:ob
         forKeyPath:@"lastTimeString"
            options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
            context:nil];

    [[NSRunLoop currentRunLoop] run];
  }
  return 0;
}
