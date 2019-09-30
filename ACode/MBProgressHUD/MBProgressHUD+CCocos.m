//
//  MBProgressHUD+cocos.m
//  ADemo
//
//  Created by ioszwj on 2019/9/29.
//  Copyright © 2019 hare. All rights reserved.
//

#import "MBProgressHUD+CCocos.h"

#define kToastDuration 1

@implementation MBProgressHUD (CCocos)

#pragma mark - 公开的方法 public Methods

/** 显示失败提示*/
+ (void)cc_showErrorMsg:(NSObject *)msg{
    [self cc_showErrorMsg:msg andDuration:kToastDuration];
}
/** 显示失败提示*/
+ (void)cc_showErrorMsg:(NSObject *)msg andDuration:(CGFloat)duration{
    [self cc_showMsg:msg imageName:@"error" andDuration:duration];
}

/** 显示成功提示*/
+ (void)cc_showSuccessMsg:(NSObject *)msg{
    [self cc_showSuccessMsg:msg andDuration:kToastDuration];
}
/** 显示成功提示*/
+ (void)cc_showSuccessMsg:(NSObject *)msg andDuration:(CGFloat)duration{
    [self cc_showMsg:msg imageName:@"success" andDuration:duration];
}

/** 显示提示*/
+ (void)cc_showMsg:(NSObject *)msg imageName:(NSString *)name{
    [self cc_showMsg:msg imageName:name andDuration:kToastDuration];
}

/** 显示提示*/
+ (void)cc_showMsg:(NSObject *)msg imageName:(NSString *)name andDuration:(CGFloat)duration{
    [self cc_hideProgress];
    NSString *path = nil;
    NSString *bundlePath = [[NSBundle mainBundle].bundlePath stringByAppendingPathComponent:@"MBProgressHUD_CCocos.bundle"];
    if (UIScreen.mainScreen.scale == 2.0) {
        path = [bundlePath stringByAppendingFormat:@"/%@@2x.png",name];
    }else{
        path = [bundlePath stringByAppendingFormat:@"/%@@3x.png",name];
    }
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    UIImageView *imageV = [[UIImageView alloc] initWithImage:image];
    
    MBProgressHUD *progressHUD = [MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
    progressHUD.mode = MBProgressHUDModeCustomView;
    progressHUD.customView = imageV;
    progressHUD.square = YES;
    progressHUD.label.text = msg.description;
    if (duration < kToastDuration) {
        duration = kToastDuration;
    }
    [progressHUD hideAnimated:YES afterDelay:kToastDuration];
}

/** 显示等待消息*/
+ (void)cc_showWaitingMsg:(NSString *)msg{
    [self cc_hideProgress];
    MBProgressHUD *progressHUD = [MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
    progressHUD.mode = MBProgressHUDModeIndeterminate;
    progressHUD.label.text = msg;
}

/** 显示忙*/
+ (void)cc_showProgress{
    MBProgressHUD *progressHUD = [MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
    [progressHUD hideAnimated:YES afterDelay:kToastDuration];
}

/** 隐藏提示*/
+ (void)cc_hideProgress{
    [MBProgressHUD hideHUDForView:[self currentView] animated:YES];
}

#pragma mark - 私有的方法 private Methods

+ (UIView *)currentView{
    UIViewController *controller = [[[UIApplication sharedApplication] keyWindow] rootViewController];
    if ([controller isKindOfClass:[UITabBarController class]]) {
        controller = [(UITabBarController *)controller selectedViewController];
    }
    if([controller isKindOfClass:[UINavigationController class]]) {
        controller = [(UINavigationController *)controller visibleViewController];
    }
    if (!controller) {
        return [UIApplication sharedApplication].keyWindow;
    }
    return controller.view;
}

@end
