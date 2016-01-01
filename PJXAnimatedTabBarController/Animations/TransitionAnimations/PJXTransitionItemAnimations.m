//
//  PJXTransitionItemAnimations.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/31.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXTransitionItemAnimations.h"

@implementation PJXTransitionItemAnimations

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        _transitionOptions = UIViewAnimationOptionTransitionNone;
    }
    
    return self;
}

- (void)playAnimation:(UIImageView *)icon textLabel:(UILabel *)textLabel
{
    [self selectedColor:icon textLabel:textLabel];
    
    [UIView transitionWithView:icon duration:(NSTimeInterval)self.duration options:self.transitionOptions animations:^{
    
    } completion:^(BOOL finished) {
        
    }];
}

- (void)deselectAnimation:(UIImageView *)icon textLabel:(UILabel *)textLabel defaultTextColor:(UIColor *)defaultTextColor
{
    UIImage *iconImage = icon.image;
    if (iconImage) {
        UIImage *renderImage = [iconImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        icon.image = renderImage;
        textLabel.textColor = defaultTextColor;
    }
}

- (void)selectedState:(UIImageView *)icon textLabel:(UILabel *)textLabel
{
    [self selectedColor:icon textLabel:textLabel];
}

- (void)selectedColor:(UIImageView *)icon textLabel:(UILabel *)textLabel
{
    if (self.iconSelectedColor != nil) {
        UIImage *iconImage = icon.image;
        if (iconImage) {
            UIImage *renderImage = [iconImage imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
            icon.image = renderImage;
            icon.tintColor = self.iconSelectedColor;
        }
        
        textLabel.textColor = self.textSelectedColor;
    }
}

@end