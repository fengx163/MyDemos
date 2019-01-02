//
//  CustomTabBar.m
//  MyDemos
//
//  Created by 冯星 on 2018/12/30.
//  Copyright © 2018年 冯星. All rights reserved.
//

#import "CustomTabBar.h"

#import "TabBarButton.h"

@interface CustomTabBar()
/**
 *  记录上一次选中的按钮
 */
@property (nonatomic, strong) UIButton *selectedBtn;
@end
@implementation CustomTabBar




- (void)setItems:(NSMutableArray *)items {
 
    _items = items;
    
    for (UITabBarItem *item in self.items) {
        TabBarButton *button = [[TabBarButton alloc] init];
        [button setBackgroundImage:item.image forState:UIControlStateNormal];
        [button setBackgroundImage:item.selectedImage forState:UIControlStateSelected];
        [button addTarget:self action:@selector(tabbarOnClick:) forControlEvents:UIControlEventTouchDown];
        [self addSubview:button];
        
    }

}

- (void)tabbarOnClick:(UIButton *)btn {

    self.selectedBtn.selected = NO;
    
    btn.selected = YES;
    
    self.selectedBtn = btn;
    
    !self.btnCliked ? : self.btnCliked(btn.tag);
    
//    if ([self.delegate respondsToSelector:@selector(tabBar:index:)]) {
//        [self.delegate tabBar:self index:btn.tag];
//    }
    
    
}




- (void)layoutSubviews {
 
    [super layoutSubviews];
   
    
    CGFloat btnX = 0;
    
    CGFloat btnY = 0;
    
    CGFloat btnW = self.frame.size.width / self.items.count;
    
    CGFloat btnH = self.frame.size.height;
    
    int i = 0;
    for (UIButton *btn in self.subviews) {
        
        btnX = btnW * i;
        
        btn.tag = i;
        
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
        
        if (i == 0){
            btn.selected = YES;
            // 记录这次选中的按钮
            self.selectedBtn = btn;
        }
        
        i++;
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
