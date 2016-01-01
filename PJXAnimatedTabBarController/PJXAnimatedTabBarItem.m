//
//  PJXAnimatedTabBarItem.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/30.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXAnimatedTabBarItem.h"
#import "PJXBadge.h"

@interface PJXAnimatedTabBarItem ()

@property (nonatomic, strong) PJXBadge *badge;

@end

@implementation PJXAnimatedTabBarItem

- (NSString *)badgeValue
{
    if (self.badge) {
        return self.badge.text;
    }
    return nil;
}

- (void)setBadgeValue:(NSString *)badgeValue
{
    if (badgeValue == nil) {
        if (self.badge) {
            [self.badge removeFromSuperview];
            self.badge = nil;
        }
        return ;
    }
    
    if (self.badge == nil) {
        self.badge = [PJXBadge bage];
        
        UIView *containerView = self.iconView.icon.superview;
        if (containerView) {
            [self.badge addBadgeOnView:containerView];
        }
    }
    
    if (self.badge) {
        self.badge.text = badgeValue;
    }
}

- (void)playAnimation
{
    NSAssert(self.animation != nil, @"add animation in UITabBarItem");
    if (self.animation != nil && self.iconView != nil) {
        [self.animation playAnimation:self.iconView.icon textLabel:self.iconView.textLabel];
    }
}

- (void)deselectAnimation
{
    if (self.animation != nil && self.iconView != nil) {
        [self.animation deselectAnimation:self.iconView.icon textLabel:self.iconView.textLabel defaultTextColor:self.textColor];
    }
}

- (void)selectedState
{
    if (self.animation != nil && self.iconView != nil) {
        [self.animation selectedState:self.iconView.icon textLabel:self.iconView.textLabel];
    }
}

@end
