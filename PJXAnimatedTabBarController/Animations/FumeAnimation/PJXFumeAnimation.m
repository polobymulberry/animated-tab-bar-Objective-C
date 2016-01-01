//
//  PJXFumeAnimation.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/30.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXFumeAnimation.h"

@implementation PJXFumeAnimation

- (void)playAnimation:(UIImageView *)icon textLabel:(UILabel *)textLabel
{
    [self playMoveIconAnimation:icon values:@[@(icon.center.y), @(icon.center.y + 4.0)]];
    [self playLabelAnimation:textLabel];
    textLabel.textColor = self.textSelectedColor;
    
    UIImage *iconImage = icon.image;
    if (iconImage) {
        UIImage *renderImage = [iconImage imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        icon.image = renderImage;
        icon.tintColor = self.textSelectedColor;
    }
}

- (void)deselectAnimation:(UIImageView *)icon textLabel:(UILabel *)textLabel defaultTextColor:(UIColor *)defaultTextColor
{
    [self playMoveIconAnimation:icon values:@[@(icon.center.y + 4.0), @(icon.center.y)]];
    [self playDeselectLabelAnimation:textLabel];
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
    [self playMoveIconAnimation:icon values:@[@(icon.center.y + 8.0)]];
    textLabel.alpha = 0;
    textLabel.textColor = self.textSelectedColor;
    
    UIImage *iconImage = icon.image;
    if (iconImage) {
        UIImage *renderImage = [iconImage imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        icon.image = renderImage;
        icon.tintColor = self.textSelectedColor;
    }
}

- (void)playMoveIconAnimation:(UIImageView *)icon values:(id)values
{
    CAKeyframeAnimation *yPositionAnimation = [self createAnimation:@"position.y" values:values duration:self.duration / 2];
    
    [icon.layer addAnimation:yPositionAnimation forKey:@"yPositionAnimation"];
}

#pragma mark - select animation
- (void)playLabelAnimation:(UILabel *)textLabel
{
    CAKeyframeAnimation *yPositionAnimation = [self createAnimation:@"position.y" values:@[@(textLabel.center.y), @(textLabel.center.y - 60.0)] duration:self.duration];
    yPositionAnimation.fillMode = kCAFillModeRemoved;
    yPositionAnimation.removedOnCompletion = YES;
    [textLabel.layer addAnimation:yPositionAnimation forKey:@"yLabelPostionAnimation"];
    
    CAKeyframeAnimation *scaleAnimation = [self createAnimation:@"transform.scale" values:@[@1.0, @2.0] duration:self.duration];
    scaleAnimation.fillMode = kCAFillModeRemoved;
    scaleAnimation.removedOnCompletion = YES;
    [textLabel.layer addAnimation:scaleAnimation forKey:@"scaleLabelAnimation"];
    
    CAKeyframeAnimation *opacityAnimation = [self createAnimation:@"opacity" values:@[@1.0 ,@0.0] duration:self.duration];
    [textLabel.layer addAnimation:opacityAnimation forKey:@"opacityLabelAnimation"];
}

- (CAKeyframeAnimation *)createAnimation:(NSString *)keyPath values:(id)values duration:(CGFloat)duration
{
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:keyPath];
    animation.values = values;
    animation.duration = (NSTimeInterval)duration;
    animation.calculationMode = kCAAnimationCubic;
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    return animation;
}

#pragma mark - deselect animation
- (void)playDeselectLabelAnimation:(UILabel *)textLabel
{
    CAKeyframeAnimation *yPositionAnimation = [self createAnimation:@"position.y" values:@[@(textLabel.center.y + 15), @(textLabel.center.y)] duration:self.duration];
    [textLabel.layer addAnimation:yPositionAnimation forKey:@"yLabelPostionAnimation"];
    
    CAKeyframeAnimation *opacityAnimation = [self createAnimation:@"opacity" values:@[@0 ,@1] duration:self.duration];
    [textLabel.layer addAnimation:opacityAnimation forKey:@"opacityLabelAnimation"];
}

@end
