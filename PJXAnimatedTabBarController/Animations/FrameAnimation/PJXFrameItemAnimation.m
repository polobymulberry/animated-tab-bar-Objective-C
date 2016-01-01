//
//  PJXFrameItemAnimation.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/30.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXFrameItemAnimation.h"
#import "NSArray+Extension.h"

@interface PJXFrameItemAnimation ()

@property (nonatomic, strong) NSMutableArray *animationImages;
@property (nonatomic, strong) UIImage *selectedImage;
@property (nonatomic, assign) IBInspectable BOOL isDeselectAnimation;
@property (nonatomic, copy) IBInspectable NSString *imagesPath;

@end

@implementation PJXFrameItemAnimation

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        _isDeselectAnimation = YES;
        _animationImages = [NSMutableArray array];
    }
    
    return self;
}

- (void)awakeFromNib
{
    NSString *path = [[NSBundle mainBundle] pathForResource:self.imagesPath ofType:@"plist"];
    
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    
    NSArray<NSString *> *animationImagesName = dict[@"images"];
    [self createImagesArray:animationImagesName];
    
    // selected image
    NSString *selectedImageName = animationImagesName[animationImagesName.count - 1];
    self.selectedImage = [UIImage imageNamed:selectedImageName];
}

- (void)createImagesArray:(NSArray *)imageNames
{
    for (NSString *name in imageNames) {
        CGImageRef image = [UIImage imageNamed:name].CGImage;
        [self.animationImages addObject:(__bridge id _Nonnull)(image)];
    }
}

- (void)playAnimation:(UIImageView *)icon textLabel:(UILabel *)textLabel
{
    [self playFrameAnimation:icon images:self.animationImages];
    textLabel.textColor = self.textSelectedColor;
}

- (void)deselectAnimation:(UIImageView *)icon textLabel:(UILabel *)textLabel defaultTextColor:(UIColor *)defaultTextColor
{
    if (self.isDeselectAnimation) {
        [self playFrameAnimation:icon images:[self.animationImages reverse]];
    }
    
    textLabel.textColor = defaultTextColor;
}

- (void)selectedState:(UIImageView *)icon textLabel:(UILabel *)textLabel
{
    icon.image = self.selectedImage;
    textLabel.textColor = self.textSelectedColor;
}

- (void)playFrameAnimation:(UIImageView *)icon images:(NSArray *)images
{
    CAKeyframeAnimation *frameAnimation = [CAKeyframeAnimation animationWithKeyPath:@"contents"];
    frameAnimation.calculationMode = kCAAnimationDiscrete;
    frameAnimation.duration = (NSTimeInterval)self.duration;
    frameAnimation.values = images;
    frameAnimation.repeatCount = 1;
    frameAnimation.removedOnCompletion = NO;
    frameAnimation.fillMode = kCAFillModeForwards;
    [icon.layer addAnimation:frameAnimation forKey:@"frameAnimation"];
}

@end
