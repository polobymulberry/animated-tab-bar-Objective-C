//
//  PJXIconView.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/31.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXIconView.h"

@implementation PJXIconView

- (instancetype)initWithIcon:(UIImageView *)icon textLabel:(UILabel *)textLabel
{
    self = [super init];
    
    if (self) {
        _icon = icon;
        _textLabel = textLabel;
    }
    
    return self;
}

@end
