//
//  CustomNavigationController.m
//  MyDemos
//
//  Created by 冯星 on 2018/12/31.
//  Copyright © 2018年 冯星. All rights reserved.
//

#import "CustomNavigationController.h"

@interface CustomNavigationController ()

@end

@implementation CustomNavigationController

//什么时候调用 当第一次初始化这个类的时候调用
//作用   初始化这个类
+ (void)initialize {
  // 这个类只调用一次
    //1.获取APP所有导航条标识
    UINavigationBar *bar =  [UINavigationBar appearanceWhenContainedIn:self, nil];
    
    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    NSMutableDictionary *mdict = [NSMutableDictionary dictionary];
    
    mdict[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    
    mdict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    
    [bar setTitleTextAttributes:mdict];
    
}
//什么时候调用 当程序一启动的时候就会调用 比mmain函数都要先调用
//作用   将当前类加载进内存  放在代码区
+ (void)load {
    NSLog(@"%s",__func__);
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
  
  
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
