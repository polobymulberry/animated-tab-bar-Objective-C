//
//  PJXIconView.h
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/31.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PJXIconView : NSObject

@property (nonatomic, strong) UIImageView *icon;
@property (nonatomic, strong) UILabel *textLabel;

- (instancetype)initWithIcon:(UIImageView *)icon textLabel:(UILabel *)textLabel;

@end
