//
//  UIApplication+url.m
//  QMDemo
//
//  Created by 张文军 on 2018/11/28.
//  Copyright © 2018 张文军. All rights reserved.
//

#import "UIApplication+url.h"

@implementation UIApplication (url)

#pragma mark - 类方法

+ (BOOL)openURL:(NSURL *)url {
    if (url == nil) {
        return NO;
    }
    UIApplication *app = [UIApplication sharedApplication];
    if ([app canOpenURL:url]==NO) {
        return NO;
    }
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    return [app openURL:url];
#pragma clang diagnostic pod
}

+ (BOOL)openPath:(NSString *)path{
    return [[UIApplication sharedApplication] openPath:path];
}

+ (void)openURL:(NSURL *)url completionHandler:(void(^)(BOOL isSuccess))completion {
    [[self sharedApplication] openURL:url completionHandler:completion];
}

+ (void)openPath:(NSString *)path completionHandler:(void(^)(BOOL isSuccess))completion {
    [[self sharedApplication] openPath:path completionHandler:completion];
}

#pragma mark - 实例方法

- (BOOL)openPath:(NSString *)path{
    if (path == nil) {
        return NO;
    }
    NSURL *url = [NSURL URLWithString:path];
    if (url == nil) {
        return NO;
    }
    if ([self canOpenURL:url]) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        return [self openURL:url];
#pragma clang diagnostic pod
    }
    return NO;
}
- (void)openURL:(NSURL *)url completionHandler:(void (^)(BOOL))completion{
    if (url == nil) {
        if (completion) {
            completion(false);
        }
        return;
    }
    if ([self canOpenURL:url]==NO) {
        if (completion) {
            completion(false);
        }
        return;
    }
    [self openURL:url options:@{} completionHandler:completion];
}
- (void)openPath:(NSString *)path completionHandler:(void(^)(BOOL isSuccess))completion{
    if (path == nil) {
        if (completion) {
            completion(false);
        }
        return;
    }
    [self openURL:[NSURL URLWithString:path] completionHandler:completion];
}

@end
