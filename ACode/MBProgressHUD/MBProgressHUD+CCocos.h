//
//  MBProgressHUD+cocos.h
//  ADemo
//
//  Created by ioszwj on 2019/9/29.
//  Copyright © 2019 hare. All rights reserved.
//


#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (CCocos)

/** 显示失败提示*/
+ (void)cc_showErrorMsg:(NSObject *)msg;
/** 显示失败提示*/
+ (void)cc_showErrorMsg:(NSObject *)msg andDuration:(CGFloat)duration;

/** 显示成功提示*/
+ (void)cc_showSuccessMsg:(NSObject *)msg;
/** 显示成功提示*/
+ (void)cc_showSuccessMsg:(NSObject *)msg andDuration:(CGFloat)duration;

/** 显示提示*/
+ (void)cc_showMsg:(NSObject *)msg imageName:(NSString *)name;
/** 显示提示*/
+ (void)cc_showMsg:(NSObject *)msg imageName:(NSString *)name andDuration:(CGFloat)duration;

/** 显示等待消息*/
+ (void)cc_showWaitingMsg:(NSString *)msg;

/** 显示忙*/
+ (void)cc_showProgress;

/** 隐藏提示*/
+ (void)cc_hideProgress;

@end
