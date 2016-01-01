//
//  ViewController.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/30.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, assign) NSInteger index;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.index = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showBadge:(id)sender {
    self.index++;
    self.tabBarItem.badgeValue = [NSString stringWithFormat:@"%ld", self.index];
}

- (IBAction)hideBadge:(id)sender {
    self.tabBarItem.badgeValue = nil;
}

@end
