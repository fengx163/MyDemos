//
//  FXCover.m
//  MyDemos
//
//  Created by 冯星 on 2019/1/1.
//  Copyright © 2019年 冯星. All rights reserved.
//

#import "FXCover.h"

@implementation FXCover

- (instancetype)initWithFrame:(CGRect)frame {
    
    
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor blackColor];
        
        self.alpha = 0.5;
        
        self.frame = kApplication.keyWindow.bounds;
        
    }
    
    return self;
}

+ (void)show {
    
    FXCover *cover = [[self alloc] init];
    
    [kApplication.keyWindow addSubview:cover];
    
   
    
}

+ (void)dismiss {
    
    for (UIView *view in kApplication.keyWindow.subviews) {
        if ([view isKindOfClass:NSClassFromString(@"FXCover")]){
            
            [view removeFromSuperview];
        }
            
             
    }
}

@end
