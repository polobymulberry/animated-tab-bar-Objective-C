//
//  PJXRotationAnimation.h
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/31.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXItemAnimation.h"

typedef NS_ENUM(NSUInteger, PJXRotationDirection){
    PJXRotationDirectionLeft,
    PJXRotationDirectionRight
};

@interface PJXRotationAnimation : PJXItemAnimation
@property (nonatomic, assign) PJXRotationDirection direction;
@end
