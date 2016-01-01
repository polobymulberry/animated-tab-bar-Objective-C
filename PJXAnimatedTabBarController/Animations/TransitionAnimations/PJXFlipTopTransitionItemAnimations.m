//
//  PJXFlipTopTransitionItemAnimations.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/31.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXFlipTopTransitionItemAnimations.h"

@implementation PJXFlipTopTransitionItemAnimations

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.transitionOptions = UIViewAnimationOptionTransitionFlipFromTop;
    }
    
    return self;
}

@end
