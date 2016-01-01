//
//  PJXAnimatedTabBarItem.h
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/30.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PJXItemAnimation.h"
#import "PJXIconView.h"

@interface PJXAnimatedTabBarItem : UITabBarItem

@property (nonatomic, weak) IBOutlet PJXItemAnimation *animation;
@property (nonatomic, strong) IBInspectable UIColor *textColor;
@property (nonatomic, strong) PJXIconView *iconView;

- (void)playAnimation;
- (void)deselectAnimation;
- (void)selectedState;

@end
