//
//  HomeTableViewController.m
//  MyDemos
//
//  Created by 冯星 on 2018/12/30.
//  Copyright © 2018年 冯星. All rights reserved.
//

#import "HomeTableViewController.h"
#import "UIImage+FX.h"
#import "FXCover.h"
#import "PopMenu.h"
@interface HomeTableViewController ()

@end

@implementation HomeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithOriginalName:@"CS50_activity_image"] style:UIBarButtonItemStylePlain target:self action:@selector(leftBarBtnCliked)];
    
    
}



- (void)leftBarBtnCliked {
    //1.弹出蒙版,占据整个屏幕，不允许用户交互
    [FXCover show];
   
   PopMenu *pop =  [PopMenu showPopWithFrame:CGRectMake(100, 100, 200, 200)];
    
    pop.dismissCompletion = ^{
      
        [FXCover dismiss];
    };
    NSLog(@"点击活动按钮");
}






@end
