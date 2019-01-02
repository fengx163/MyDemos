//
//  PopMenu.h
//  MyDemos
//
//  Created by 冯星 on 2019/1/1.
//  Copyright © 2019年 冯星. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PopMenu : UIView

@property(nonatomic,copy)void(^dismissCompletion)();
+ (instancetype)showPopWithFrame:(CGRect )frmae;


@end

NS_ASSUME_NONNULL_END
