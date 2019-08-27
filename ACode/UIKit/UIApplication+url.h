//
//  UIApplication+url.h
//  QMDemo
//
//  Created by 张文军 on 2018/11/28.
//  Copyright © 2018 张文军. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIApplication (url)

#pragma mark - 类方法

+ (BOOL)openURL:(NSURL *)url;
+ (BOOL)openPath:(NSString *)path;
+ (void)openURL:(NSURL *)url completionHandler:(void(^)(BOOL isSuccess))completion;
+ (void)openPath:(NSString *)path completionHandler:(void(^)(BOOL isSuccess))completion;

#pragma mark - 实例方法

- (BOOL)openPath:(NSString *)path;
- (void)openURL:(NSURL *)url completionHandler:(void (^)(BOOL))completion;
- (void)openPath:(NSString *)path completionHandler:(void(^)(BOOL isSuccess))completion;

@end

NS_ASSUME_NONNULL_END
