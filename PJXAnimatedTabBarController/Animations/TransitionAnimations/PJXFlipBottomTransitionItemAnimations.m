//
//  PJXFlipBottomTransitionItemAnimations.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/31.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXFlipBottomTransitionItemAnimations.h"

@implementation PJXFlipBottomTransitionItemAnimations

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.transitionOptions = UIViewAnimationOptionTransitionFlipFromBottom;
    }
    
    return self;
}

@end
