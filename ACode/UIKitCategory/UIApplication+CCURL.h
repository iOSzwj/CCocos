//
//  UIApplication+url.h
//  QMDemo
//
//  Created by 张文军 on 2018/11/28.
//  Copyright © 2018 张文军. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIApplication (CCURL)

#pragma mark - 类方法

+ (BOOL)cc_openURL:(NSURL *)url;
+ (BOOL)cc_openPath:(NSString *)path;
+ (void)cc_openURL:(NSURL *)url completionHandler:(void(^)(BOOL isSuccess))completion NS_AVAILABLE_IOS(10_0);
+ (void)cc_openPath:(NSString *)path completionHandler:(void(^)(BOOL isSuccess))completion NS_AVAILABLE_IOS(10_0);

#pragma mark - 实例方法

- (BOOL)cc_openPath:(NSString *)path;
- (void)cc_openURL:(NSURL *)url completionHandler:(void (^)(BOOL))completion NS_AVAILABLE_IOS(10_0);
- (void)cc_openPath:(NSString *)path completionHandler:(void(^)(BOOL isSuccess))completion NS_AVAILABLE_IOS(10_0);

@end

NS_ASSUME_NONNULL_END
