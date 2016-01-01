//
//  PJXBadge.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/30.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXBadge.h"

@implementation PJXBadge

+ (PJXBadge *)bage
{
    return [[PJXBadge alloc] initWithFrame:CGRectMake(0, 0, 18, 18)];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        self.layer.backgroundColor = [UIColor redColor].CGColor;
        self.layer.cornerRadius = frame.size.width / 2;
        
        [self configureNumberLabel];
        
        self.translatesAutoresizingMaskIntoConstraints = NO;
        
        // constraints
        [self createSizeConstraints:frame.size];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    return self;
}

- (void)createSizeConstraints:(CGSize)size
{
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                        attribute:NSLayoutAttributeWidth
                                                                        relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                           toItem:nil
                                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                                       multiplier:1
                                                                         constant:size.width];
    [self addConstraint:widthConstraint];
    
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:nil
                                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                                      multiplier:1
                                                                        constant:size.height];
    [self addConstraint:heightConstraint];
}

- (void)configureNumberLabel
{
    self.textAlignment = NSTextAlignmentCenter;
    self.font = [UIFont systemFontOfSize:13.0];
    self.textColor = [UIColor whiteColor];
}

- (void)addBadgeOnView:(UIView *)onView
{
    [onView addSubview:self];
    
    // create constraints
    self.topConstraint = [NSLayoutConstraint constraintWithItem:self
                                                      attribute:NSLayoutAttributeTop
                                                      relatedBy:NSLayoutRelationEqual
                                                         toItem:onView
                                                      attribute:NSLayoutAttributeTop
                                                     multiplier:1
                                                       constant:3];
    if (self.topConstraint) {
        [onView addConstraint:self.topConstraint];
    }
    
    self.centerXConstraint = [NSLayoutConstraint constraintWithItem:self
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:onView
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1
                                                           constant:10];
    if (self.centerXConstraint) {
        [onView addConstraint:self.centerXConstraint];
    }
}



@end
