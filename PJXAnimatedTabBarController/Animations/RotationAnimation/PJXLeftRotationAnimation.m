//
//  PJXLeftRotationAnimation.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/31.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXLeftRotationAnimation.h"

@implementation PJXLeftRotationAnimation

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.duration = PJXRotationDirectionLeft;
    }
    
    return self;
}

@end
