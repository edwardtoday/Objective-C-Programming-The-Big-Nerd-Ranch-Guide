//
//  BNRWallSafe.m
//  Appliances
//
//  Created by edwardtoday on 12/22/14.
//  Copyright (c) 2014 edwardtoday. All rights reserved.
//

#import "BNRWallSafe.h"

@implementation BNRWallSafe

- (instancetype)init {
  [NSException raise:@"BNRWallSafeInitialization"
              format:@"Use initWithSecretCode: not init"];
  return [super init];
}

@end
