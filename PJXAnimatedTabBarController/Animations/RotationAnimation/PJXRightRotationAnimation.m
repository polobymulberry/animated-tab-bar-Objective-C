//
//  PJXRightRotationAnimation.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/31.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXRightRotationAnimation.h"

@implementation PJXRightRotationAnimation

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.duration = PJXRotationDirectionRight;
    }
    
    return self;
}

@end
