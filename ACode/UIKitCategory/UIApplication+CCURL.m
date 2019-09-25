//
//  UIApplication+url.m
//  QMDemo
//
//  Created by 张文军 on 2018/11/28.
//  Copyright © 2018 张文军. All rights reserved.
//

#import "UIApplication+CCURL.h"

@implementation UIApplication (CCURL)

#pragma mark - 类方法

+ (BOOL)cc_openURL:(NSURL *)url {
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

+ (BOOL)cc_openPath:(NSString *)path{
    return [[UIApplication sharedApplication] cc_openPath:path];
}

+ (void)cc_openURL:(NSURL *)url completionHandler:(void(^)(BOOL isSuccess))completion {
    [[self sharedApplication] cc_openURL:url completionHandler:completion];
}

+ (void)cc_openPath:(NSString *)path completionHandler:(void(^)(BOOL isSuccess))completion {
    [[self sharedApplication] cc_openPath:path completionHandler:completion];
}

#pragma mark - 实例方法

- (BOOL)cc_openPath:(NSString *)path{
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
- (void)cc_openURL:(NSURL *)url completionHandler:(void (^)(BOOL))completion{
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
    if (@available(iOS 10.0, *)) {
        [self openURL:url options:@{} completionHandler:completion];
    } else {
        completion([self openURL:url]);
    }
}
- (void)cc_openPath:(NSString *)path completionHandler:(void(^)(BOOL isSuccess))completion{
    if (path == nil) {
        if (completion) {
            completion(false);
        }
        return;
    }
    [self cc_openURL:[NSURL URLWithString:path] completionHandler:completion];
}

@end
