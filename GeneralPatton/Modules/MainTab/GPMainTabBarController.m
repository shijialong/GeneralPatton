//
//  GPMainTabBarController.m
//  GeneralPatton
//
//  Created by shijialong on 2017/12/26.
//  Copyright © 2017年 shijialong. All rights reserved.
//

#import "GPMainTabBarController.h"

@interface GPMainTabBarController ()

@end

@implementation GPMainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UITabBar appearance] setBackgroundColor:[UIColor whiteColor]];
    [UITabBar appearance].translucent = NO;
    
    /**** 设置所有UITabBarItem的属性 ****/
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor appMainColor]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor appDarkGrayTextColor]} forState:UIControlStateNormal];
    
    /**** 添加子控制器 ****/
    UIViewController *homeVC = [[UIViewController alloc] init];
    UINavigationController *navHome = [[UINavigationController alloc] initWithRootViewController:homeVC];
    UIImage *homeTabImg = [[UIImage imageNamed:@"gp_tab_home_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *homeTabImgSel = [[UIImage imageNamed:@"gp_tab_home_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    homeVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页"
                                                      image:homeTabImg
                                              selectedImage:homeTabImgSel];
    
    UIViewController *discoveryVC = [[UIViewController alloc] init];
    UINavigationController *navDiscovery = [[UINavigationController alloc] initWithRootViewController:discoveryVC];
    UIImage *discoveryTabImg = [[UIImage imageNamed:@"gp_tab_discovery_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *discoveryTabImgSel = [[UIImage imageNamed:@"gp_tab_discovery_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    discoveryVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"发现"
                                                           image:discoveryTabImg
                                                   selectedImage:discoveryTabImgSel];
    
    UIViewController *mineVC = [[UIViewController alloc] init];
    UINavigationController *navMine = [[UINavigationController alloc] initWithRootViewController:mineVC];
    UIImage *mineTabImg = [[UIImage imageNamed:@"gp_tab_mine_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *mineTabImgSel = [[UIImage imageNamed:@"gp_tab_mine_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    mineVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的"
                                                      image:mineTabImg
                                              selectedImage:mineTabImgSel];
    self.viewControllers = @[navHome,navDiscovery,navMine];
    self.selectedIndex = 0;
    
    self.tabBar.layer.shadowColor = [UIColor blackColor].CGColor;//shadowColor阴影颜色
    self.tabBar.layer.shadowOffset = CGSizeMake(0, 5);//shadowOffset阴影偏移,x向右偏移4，y向下偏移4，默认(0, -3),这个跟shadowRadius配合使用
    self.tabBar.layer.shadowOpacity = 0.9;//阴影透明度，默认0
    self.tabBar.layer.shadowRadius = 4;//阴影半径，默认3
}


@end
