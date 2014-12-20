//
//  BNRLogger.h
//  Callbacks
//
//  Created by edwardtoday on 12/20/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger
    : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate> {
  NSMutableData *_incomingData; // for NSURLConnectionData
}
@property(nonatomic) NSDate *lastTime;
- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;
- (void)zoneChange:(NSNotification *)note;
@end
