//
//  PJXBounceAnimation.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/30.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXBounceAnimation.h"

@implementation PJXBounceAnimation

- (void)playAnimation:(UIImageView *)icon textLabel:(UILabel *)textLabel
{
    [self playBounceAnimation:icon];
    textLabel.textColor = self.textSelectedColor;
}

- (void)deselectAnimation:(UIImageView *)icon textLabel:(UILabel *)textLabel defaultTextColor:(UIColor *)defaultTextColor
{
    textLabel.textColor = defaultTextColor;
    
    UIImage *iconImage = icon.image;
    if (iconImage) {
        UIImage *renderImage = [iconImage imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        icon.image = renderImage;
        icon.tintColor = defaultTextColor;
    }
}

- (void)selectedState:(UIImageView *)icon textLabel:(UILabel *)textLabel
{
    textLabel.textColor = self.textSelectedColor;
    
    UIImage *iconImage = icon.image;
    if (iconImage) {
        UIImage *renderImage = [iconImage imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        icon.image = renderImage;
        icon.tintColor = self.iconSelectedColor;
    }
}

- (void)playBounceAnimation:(UIImageView *)icon
{
    CAKeyframeAnimation *bounceAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    bounceAnimation.values = @[@1.0, @1.4, @0.9, @1.15, @0.95, @1.02, @1.0];
    bounceAnimation.duration = (NSTimeInterval)self.duration;
    bounceAnimation.calculationMode = kCAAnimationCubic;
    
    [icon.layer addAnimation:bounceAnimation forKey:@"bounceAnimation"];
    
    UIImage *iconImage = icon.image;
    if (iconImage) {
        UIImage *renderImage = [iconImage imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        icon.image = renderImage;
        icon.tintColor = self.iconSelectedColor;
    }
}

@end
