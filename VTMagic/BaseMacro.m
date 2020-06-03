//
//  BaseMacro.m
//  Pods-VTMagic
//
//  Created by wangws1990 on 2020/6/3.
//

#import "BaseMacro.h"
#import <UIKit/UIKit.h>
@implementation BaseMacro
+ (BOOL)iPhoneX{
    UIView *window = [UIApplication sharedApplication].delegate.window;
    if (@available(iOS 11.0, *)) {
        UIEdgeInsets inset = window.safeAreaInsets;
        return (inset.bottom == 34) || (inset.bottom == 21);
    }
    return NO;
}
@end
