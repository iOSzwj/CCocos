//
//  NSObject+runtime.h
//  Demo
//
//  Created by 张文军 on 2018/11/12.
//  Copyright © 2018 张文军. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (runtime)

#pragma mark - 返回值为id类型

- (id)executeSel:(SEL)sel;
+ (id)executeSel:(SEL)sel;
- (id)executeSelName:(NSString *)selName;
+ (id)executeSelName:(NSString *)selName;

- (id)executeSel:(SEL)sel obj:(id)obj;
+ (id)executeSel:(SEL)sel obj:(id)obj;
- (id)executeSelName:(NSString *)selName obj:(id)obj;
+ (id)executeSelName:(NSString *)selName obj:(id)obj;

- (id)executeSel:(SEL)sel obj:(id)obj1 obj:(id)obj2;
+ (id)executeSel:(SEL)sel obj:(id)obj1 obj:(id)obj2;
- (id)executeSelName:(NSString *)selName obj:(id)obj1 obj:(id)obj2;
+ (id)executeSelName:(NSString *)selName obj:(id)obj1 obj:(id)obj2;

#pragma mark - 返回值为bool类型

- (BOOL)bExecuteSel:(SEL)sel;
+ (BOOL)bExecuteSel:(SEL)sel;
- (BOOL)bExecuteSelName:(NSString *)selName;
+ (BOOL)bExecuteSelName:(NSString *)selName;

- (BOOL)bExecuteSel:(SEL)sel obj:(id)obj;
+ (BOOL)bExecuteSel:(SEL)sel obj:(id)obj;
- (BOOL)bExecuteSelName:(NSString *)selName obj:(id)obj;
+ (BOOL)bExecuteSelName:(NSString *)selName obj:(id)obj;

- (BOOL)bExecuteSel:(SEL)sel obj:(id)obj1 obj:(id)obj2;
+ (BOOL)bExecuteSel:(SEL)sel obj:(id)obj1 obj:(id)obj2;
- (BOOL)bExecuteSelName:(NSString *)selName obj:(id)obj1 obj:(id)obj2;
+ (BOOL)bExecuteSelName:(NSString *)selName obj:(id)obj1 obj:(id)obj2;

@end

NS_ASSUME_NONNULL_END
