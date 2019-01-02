//
//  PopMenu.m
//  MyDemos
//
//  Created by 冯星 on 2019/1/1.
//  Copyright © 2019年 冯星. All rights reserved.
//

#import "PopMenu.h"
#import "UIImage+FX.h"

@interface PopMenu ()

@end

@implementation PopMenu



- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageWithOriginalName:@"xiaopingguo"] ];
        
        imgView.center = self.center;
        
        imgView.userInteractionEnabled = YES;
        
        UIButton *closedBtn = [[UIButton alloc] initWithFrame: CGRectMake(0, 0, 20, 20)];
        
        [closedBtn setBackgroundImage:[UIImage imageWithOriginalName:@"alphaClose"]forState:UIControlStateNormal];
        
        [closedBtn addTarget:self action:@selector(closedBtnCliked:) forControlEvents:UIControlEventTouchUpInside];
        
        [imgView addSubview:closedBtn];
        
        [self addSubview:imgView];
        
    }
    return self;
}


- (void)closedBtnCliked:(UIButton *)sender {
    
    [UIView animateWithDuration:0.5 animations:^{
        self.center = CGPointMake(44, 44);
        self.transform = CGAffineTransformMakeScale(0.01, 0.01);
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
        
        !self.dismissCompletion?:self.dismissCompletion();
    }];
}




+ (instancetype)showPopWithFrame:(CGRect)frmae{
    
    
    PopMenu *pop = [[PopMenu alloc] initWithFrame:frmae];
    
    [kApplication.keyWindow addSubview:pop];
    
    return pop;
    
}
@end
