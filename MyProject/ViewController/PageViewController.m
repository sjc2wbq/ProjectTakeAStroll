//
//  PageViewController.m
//  MyProject
//
//  Created by 时俊川 on 16/2/26.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import "PageViewController.h"
#import "FanViewController.h"
@interface PageViewController ()

@end

@implementation PageViewController
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        //显示在导航栏上
        self.showOnNavigationBar = YES;
        //设置高度
        self.menuHeight = 40;
        //设置题目的宽度
        self.menuItemWidth = 60;
        //设置菜单的背景色
        self.menuBGColor = [UIColor clearColor];
        
        //标题非选择时的颜色, 颜色是可动画的.
        
        self.titleColorNormal = [UIColor whiteColor];
        
        //标题选中时的颜色, 颜色是可动画的.
        
        self.titleColorSelected = [UIColor cyanColor];
        //带有横线的风格
        self.menuViewStyle = WMMenuViewStyleFooldHollow;
        
    }
    return self;
}

- (NSArray *)titles{
    return @[@"推荐", @"趣闻", @"热映", @"理财", @"情感", @"养生", @"八卦", @"时尚", @"公益", @"体坛", @"搞笑", @"美食", @"星座"];
}
- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController{
    return self.titles.count;
}
- (NSString *)pageController:(WMPageController *)pageController titleAtIndex:(NSInteger)index{
    return self.titles[index];
}

- (UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index{
    FanViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"FanViewController"];
    vc.type = index;
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
