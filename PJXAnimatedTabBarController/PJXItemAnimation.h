//
//  PJXItemAnimation.h
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/30.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol PJXItemAnimationProtocol <NSObject>

- (void)playAnimation:(UIImageView *)icon textLabel:(UILabel *)textLabel;
- (void)deselectAnimation:(UIImageView *)icon textLabel:(UILabel *)textLabel defaultTextColor:(UIColor *)defaultTextColor;
- (void)selectedState:(UIImageView *)icon textLabel:(UILabel *)textLabel;

@end

@interface PJXItemAnimation : NSObject <PJXItemAnimationProtocol>

@property (nonatomic, assign)IBInspectable CGFloat duration;
@property (nonatomic, strong)IBInspectable UIColor *textSelectedColor;
@property (nonatomic, strong)IBInspectable UIColor *iconSelectedColor;

@end
