//
//  PJXFlipRightTransitionItemAnimations.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/31.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXFlipRightTransitionItemAnimations.h"

@implementation PJXFlipRightTransitionItemAnimations

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.transitionOptions = UIViewAnimationOptionTransitionFlipFromRight;
    }
    
    return self;
}

@end
