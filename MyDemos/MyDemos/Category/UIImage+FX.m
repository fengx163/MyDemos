//
//  UIImage+FX.m
//  MyDemos
//
//  Created by 冯星 on 2018/12/31.
//  Copyright © 2018年 冯星. All rights reserved.
//

#import "UIImage+FX.h"

@implementation UIImage (FX)


+ (UIImage *)imageWithOriginalName:(NSString *)name {
    
    UIImage *image = [UIImage imageNamed:name];
    
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
}
@end
