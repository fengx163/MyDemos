//
//  UIDefine.h
//  MyDemos
//
//  Created by 冯星 on 2018/12/30.
//  Copyright © 2018年 冯星. All rights reserved.
//

#ifndef UIDefine_h
#define UIDefine_h


/**本地存储*/
#define kUserDefaults [NSUserDefaults standardUserDefaults]
/**系统版本*/
#define kSystemVersion                [UIDevice currentDevice].systemVersion.floatValue
/**屏幕宽*/
#define kScreenWidth                  [[UIScreen mainScreen] bounds].size.width
/**屏幕高*/
#define kScreenHeight                 [[UIScreen mainScreen] bounds].size.height
/**RGB颜色*/
#define RGBColor(r,g,b,a)             [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
/**随机颜色*/
#define kRandomColor                  [UIColor colorWithRed:(arc4random()%255)/255.0 green:(arc4random()%255)/255.0 blue:(arc4random()%255)/255.0 alpha:1.0]
/**当前控制器*/
#define kKeyWindowRootVC             [UIApplication sharedApplication].keyWindow.rootViewController
/**弱引用*/
#define Wself                        __weak typeof(&*self) weakSelf = self;
/**强引用*/
#define Sself                        __strong typeof(&*self) strongSelf = weakSelf;
/**App对象*/
#define kApplication                    [UIApplication sharedApplication]
/**keywindow*/
#define kKeyWindow                      [UIApplication sharedApplication].keyWindow
/**APP代理*/
#define kAppDelegate                    [UIApplication sharedApplication].delegate
/**UserDefault*/
#define kUserDefaults                   [NSUserDefaults standardUserDefaults]
/**通知中心*/
#define kNotificationCenter             [NSNotificationCenter defaultCenter]
/**16进制的颜色*/
#define kColor_with_hex(hexValue) [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16)) / 255.0 green:((float)((hexValue & 0xFF00) >> 8)) / 255.0 blue:((float)(hexValue & 0xFF)) / 255.0 alpha:1.0f]

/**适配比例*/
#define kScaleW(floatValue)    (floatValue)*(kScreenWidth / 375.0)

#define kScaleH(floatValue)    (floatValue)* (kScreenHeight / 667.0)

#define IS_IPHONE_X (kScreenHeight == 812.0f) ? YES : NO

#define IS_IPHONE_4S (kScreenHeight == 480.0f) ? YES : NO

#define IPHONE_X_Safe_H  639

#define Height_NavContentBar 44.0f

#define Height_StatusBar (IS_IPHONE_X==YES)?44.0f: 20.0f

#define Height_NavBar   (IS_IPHONE_X==YES)?88.0f: 64.0f

#define Height_TabBar   (IS_IPHONE_X==YES)?83.0f: 49.0f



#ifdef DEBUG
#define FXLog(...) NSLog(@"%s 第%d行 \n %@\n\n",__func__,__LINE__,[NSString stringWithFormat:__VA_ARGS__])
#else
#define FXLog(...)

#endif


#define singleH(name) +(instancetype)share##name;

#if __has_feature(objc_arc)

#define singleM(name) static id _instance;\
+(instancetype)allocWithZone:(struct _NSZone *)zone\
{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instance = [super allocWithZone:zone];\
});\
return _instance;\
}\
\
+(instancetype)share##name\
{\
return [[self alloc]init];\
}\
-(id)copyWithZone:(NSZone *)zone\
{\
return _instance;\
}\
\
-(id)mutableCopyWithZone:(NSZone *)zone\
{\
return _instance;\
}
#else
#define singleM static id _instance;\
+(instancetype)allocWithZone:(struct _NSZone *)zone\
{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instance = [super allocWithZone:zone];\
});\
return _instance;\
}\
\
+(instancetype)shareTools\
{\
return [[self alloc]init];\
}\
-(id)copyWithZone:(NSZone *)zone\
{\
return _instance;\
}\
-(id)mutableCopyWithZone:(NSZone *)zone\
{\
return _instance;\
}\
-(oneway void)release\
{\
}\
\
-(instancetype)retain\
{\
return _instance;\
}\
\
-(NSUInteger)retainCount\
{\
return MAXFLOAT;\
}
#endif
#endif /* UIDefine_h */
