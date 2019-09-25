//
//  NSObject+runtime.h
//  Demo
//
//  Created by 张文军 on 2018/11/12.
//  Copyright © 2018 张文军. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (CCPerform)

#pragma mark - 返回值为id类型

- (id)cc_executeSel:(SEL)sel;
+ (id)cc_executeSel:(SEL)sel;
- (id)cc_executeSelName:(NSString *)selName;
+ (id)cc_executeSelName:(NSString *)selName;

- (id)cc_executeSel:(SEL)sel obj:(id)obj;
+ (id)cc_executeSel:(SEL)sel obj:(id)obj;
- (id)cc_executeSelName:(NSString *)selName obj:(id)obj;
+ (id)cc_executeSelName:(NSString *)selName obj:(id)obj;

- (id)cc_executeSel:(SEL)sel obj:(id)obj1 obj:(id)obj2;
+ (id)cc_executeSel:(SEL)sel obj:(id)obj1 obj:(id)obj2;
- (id)cc_executeSelName:(NSString *)selName obj:(id)obj1 obj:(id)obj2;
+ (id)cc_executeSelName:(NSString *)selName obj:(id)obj1 obj:(id)obj2;

#pragma mark - 返回值为bool类型

- (BOOL)cc_bExecuteSel:(SEL)sel;
+ (BOOL)cc_bExecuteSel:(SEL)sel;
- (BOOL)cc_bExecuteSelName:(NSString *)selName;
+ (BOOL)cc_bExecuteSelName:(NSString *)selName;

- (BOOL)cc_bExecuteSel:(SEL)sel obj:(id)obj;
+ (BOOL)cc_bExecuteSel:(SEL)sel obj:(id)obj;
- (BOOL)cc_bExecuteSelName:(NSString *)selName obj:(id)obj;
+ (BOOL)cc_bExecuteSelName:(NSString *)selName obj:(id)obj;

- (BOOL)cc_bExecuteSel:(SEL)sel obj:(id)obj1 obj:(id)obj2;
+ (BOOL)cc_bExecuteSel:(SEL)sel obj:(id)obj1 obj:(id)obj2;
- (BOOL)cc_bExecuteSelName:(NSString *)selName obj:(id)obj1 obj:(id)obj2;
+ (BOOL)cc_bExecuteSelName:(NSString *)selName obj:(id)obj1 obj:(id)obj2;

@end

NS_ASSUME_NONNULL_END
