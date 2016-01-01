//
//  PJXFlipLeftTransitionItemAniamtions.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/31.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXFlipLeftTransitionItemAniamtions.h"

@implementation PJXFlipLeftTransitionItemAniamtions

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.transitionOptions = UIViewAnimationOptionTransitionFlipFromLeft;
    }
    
    return self;
}

@end
