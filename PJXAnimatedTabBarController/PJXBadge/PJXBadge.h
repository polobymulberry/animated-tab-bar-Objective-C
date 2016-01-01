//
//  PJXBadge.h
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/30.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PJXBadge : UILabel

@property (nonatomic, strong) NSLayoutConstraint *topConstraint;
@property (nonatomic, strong) NSLayoutConstraint *centerXConstraint;
@property (nonatomic, strong) UILabel *numberLabel;

+ (PJXBadge *)bage;
- (void)addBadgeOnView:(UIView *)onView;

@end
