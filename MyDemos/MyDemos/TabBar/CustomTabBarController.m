//
//  CustomTabBarController.m
//  MyDemos
//
//  Created by 冯星 on 2018/12/30.
//  Copyright © 2018年 冯星. All rights reserved.
//

#import "CustomTabBarController.h"
#import "HomeTableViewController.h"
#import "DiscoverViewController.h"
#import "MyViewController.h"
#import "CustomTabBar.h"
#import "ArenaViewController.h"
#import "HistoryViewController.h"
#import "CustomNavigationController.h"

@interface CustomTabBarController ()

@property (nonatomic,strong)NSMutableArray *items;
@end

@implementation CustomTabBarController


- (NSMutableArray *)items {
    if (!_items) {
        
        _items = [NSMutableArray array];
    }
    return _items;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    //1.添加子控制器
    [self  addChildsVC];
    
    [self  setUpTabBar];
}


- (void)setUpTabBar{
    
    CustomTabBar *tabBar = [[CustomTabBar alloc] initWithFrame:self.tabBar.frame];

    tabBar.items = self.items;

//    tabBar.delegate = self;
    
    tabBar.btnCliked = ^(NSInteger index) {
        
        self.selectedIndex = index;
        
    };

    [self.view addSubview:tabBar];
    
}

//- (void)tabBar:(CustomTabBar *)tabBar  index:(NSInteger )index{
//
//    self.selectedIndex = index;
//
//}

- (void)addChildsVC {
 
    HomeTableViewController *home = [HomeTableViewController new];
    
    DiscoverViewController *discover = [DiscoverViewController new];
    
    MyViewController *my = [MyViewController new];
    
    ArenaViewController *arena = [ArenaViewController new];
    
    HistoryViewController *history =  [HistoryViewController new];
    
    
    [self addVCWithImage:[UIImage imageNamed:@"TabBar_Hall_new"] Title:@"购彩大厅" VC:home SelectedImage:[UIImage imageNamed:@"TabBar_Hall_selected_new"]];
    
    [self addVCWithImage:[UIImage imageNamed:@"TabBar_Discovery_new"] Title:@"发现" VC:discover SelectedImage:[UIImage imageNamed:@"TabBar_Discovery_selected_new"]];
    
     [self addVCWithImage:[UIImage imageNamed:@"TabBar_Arena_new"] Title:@"竞技场" VC:arena SelectedImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"]];
    
     [self addVCWithImage:[UIImage imageNamed:@"TabBar_History_new"] Title:@"开奖信息" VC:history SelectedImage:[UIImage imageNamed:@"TabBar_History_selected_new"]];
    
    [self addVCWithImage:[UIImage imageNamed:@"TabBar_MyLottery_new"] Title:@"我的彩票" VC:my SelectedImage:[UIImage imageNamed:@"TabBar_MyLottery_selected_new"]];
    
    
}

- (void)addVCWithImage:(UIImage *)image Title:(NSString *)title VC:(UIViewController *)vc SelectedImage:(UIImage *)selectedImage{
    
    UINavigationController *nav = [[CustomNavigationController alloc] initWithRootViewController:vc];
    
    vc.navigationItem.title = title;
    
     [self addChildViewController:nav];
    
    UITabBarItem *item = [UITabBarItem new];
    
    item.title = title;
    
    item.image = image;
    
    item.selectedImage = selectedImage;
    
    [self.items addObject:item];
    

}


@end
