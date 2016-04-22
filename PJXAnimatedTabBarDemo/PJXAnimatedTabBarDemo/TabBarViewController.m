//
//  TabBarViewController.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 16/4/16.
//  Copyright © 2016年 poloby. All rights reserved.
//

#import "TabBarViewController.h"

#import "PJXAnimatedTabBarController.h"
#import "PJXAnimatedTabBarItem.h"
#import "PJXIconView.h"

// View Controllers
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

// Animations
#import "PJXBounceAnimation.h"
#import "PJXFumeAnimation.h"
#import "PJXRotationAnimation.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    // Do any additional setup after loading the view.
    // First ViewController
    PJXBounceAnimation *bounceAnimation = [[PJXBounceAnimation alloc] init];
    bounceAnimation.textSelectedColor = [UIColor blueColor];
    bounceAnimation.iconSelectedColor = [UIColor blueColor];
    
    PJXAnimatedTabBarItem *firstTabBarItem = [[PJXAnimatedTabBarItem alloc] initWithTitle:@"Bounce Animation" image:[UIImage imageNamed:@"drop"] selectedImage:nil];
    firstTabBarItem.animation = bounceAnimation;
    firstTabBarItem.textColor = [UIColor greenColor];
    UIImageView *firstIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"drop"]];
    UILabel *firstLabel = [[UILabel alloc] init];
    firstLabel.text = @"Bounce Animation";
    firstTabBarItem.iconView = [[PJXIconView alloc] initWithIcon:firstIconView textLabel:firstLabel];
    
    FirstViewController *firstViewController = [[FirstViewController alloc] init];
    UINavigationController *firstNav = [[UINavigationController alloc] initWithRootViewController:firstViewController];
    firstNav.tabBarItem = firstTabBarItem;
    
    // Second ViewController
    PJXFumeAnimation *fumeAnimation = [[PJXFumeAnimation alloc] init];
    fumeAnimation.textSelectedColor = [UIColor blueColor];
    fumeAnimation.iconSelectedColor = [UIColor blueColor];
    
    PJXAnimatedTabBarItem *secondTabBarItem = [[PJXAnimatedTabBarItem alloc] initWithTitle:@"Fume Animation" image:[UIImage imageNamed:@"icon_pin"] selectedImage:nil];
    secondTabBarItem.animation = fumeAnimation;
    secondTabBarItem.textColor = [UIColor redColor];
    UIImageView *secondIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_pin"]];
    UILabel *secondLabel = [[UILabel alloc] init];
    secondLabel.text = @"Fume Animation";
    secondTabBarItem.iconView = [[PJXIconView alloc] initWithIcon:secondIconView textLabel:secondLabel];
    
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    UINavigationController *secondNav = [[UINavigationController alloc] initWithRootViewController:secondViewController];
    secondNav.tabBarItem = secondTabBarItem;
    
    // Third ViewContrller
    PJXRotationAnimation *rotationAnimation = [[PJXRotationAnimation alloc] init];
    rotationAnimation.textSelectedColor = [UIColor blueColor];
    rotationAnimation.iconSelectedColor = [UIColor blueColor];
    
    PJXAnimatedTabBarItem *thirdTabBarItem = [[PJXAnimatedTabBarItem alloc] initWithTitle:@"Rotation Animation" image:[UIImage imageNamed:@"icon_user"] selectedImage:nil];
    thirdTabBarItem.animation = rotationAnimation;
    thirdTabBarItem.textColor = [UIColor yellowColor];
    UIImageView *thirdIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_user"]];
    UILabel *thirdLabel = [[UILabel alloc] init];
    thirdLabel.text = @"Rotation Animation";
    thirdTabBarItem.iconView = [[PJXIconView alloc] initWithIcon:thirdIconView textLabel:thirdLabel];
    
    ThirdViewController *thirdViewController = [[ThirdViewController alloc] init];
    UINavigationController *thirdNav = [[UINavigationController alloc] initWithRootViewController:thirdViewController];
    thirdNav.tabBarItem = thirdTabBarItem;
    
    self.viewControllers = @[firstNav, secondNav, thirdNav];
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
