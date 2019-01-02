//
//  CustomTabBar.h
//  MyDemos
//
//  Created by 冯星 on 2018/12/30.
//  Copyright © 2018年 冯星. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class   CustomTabBar;

//@protocol CustomTabBarDelegate <NSObject>
//
//- (void)tabBar:(CustomTabBar *)tabBar  index:(NSInteger )index;
//
//@end


@interface CustomTabBar : UIView

@property (nonatomic,strong) NSMutableArray *items;
//使用Block更快更方便
//@property (nonatomic,weak) id<CustomTabBarDelegate> delegate;

@property (nonatomic,copy) void(^btnCliked)(NSInteger index);




@end

NS_ASSUME_NONNULL_END
