//
//  PJXItemAnimation.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/30.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXItemAnimation.h"

@implementation PJXItemAnimation

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        _duration = 0.5;
        _textSelectedColor = [UIColor colorWithRed:0 green:0.478431 blue:1 alpha:1];
    }
    
    return self;
}

- (void)playAnimation:(UIImageView *)icon textLabel:(UILabel *)textLabel
{
}

- (void)deselectAnimation:(UIImageView *)icon textLabel:(UILabel *)textLabel defaultTextColor:(UIColor *)defaultTextColor
{
}

- (void)selectedState:(UIImageView *)icon textLabel:(UILabel *)textLabel
{
}

@end
