//
//  VTMacro.m
//  Pods-VTMagic
//
//  Created by wangws1990 on 2020/6/3.
//

#import "VTMacro.h"
#import <UIKit/UIKit.h>
@implementation VTMacro
+ (BOOL)vt_iPhoneX{
    UIView *window = [UIApplication sharedApplication].delegate.window;
    if (@available(iOS 11.0, *)) {
        UIEdgeInsets inset = window.safeAreaInsets;
        return inset.bottom > 0 ? YES : NO;
    }
    return NO;
}
+ (CGFloat)vt_iNaviBar{
    return  [VTMacro vt_iStatusBar] + 44;
}
+ (CGFloat)vt_iStatusBar{
    UIView *window = [UIApplication sharedApplication].delegate.window;
    if (@available(iOS 11.0, *)) {
        UIEdgeInsets inset = window.safeAreaInsets;
        return inset.top;
    }
    return 20;
}
@end
