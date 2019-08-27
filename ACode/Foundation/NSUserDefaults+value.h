//
//  NSUserDefaults+info.h
//  Demo
//
//  Created by 张文军 on 2019/3/6.
//  Copyright © 2019 张文军. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSUserDefaults (value)

#pragma mark - 取值

+ (id)objectForKey:(NSString *)key;

+ (NSString *)stringForKey:(NSString *)key;

+ (NSArray *)arrayForKey:(NSString *)key;

+ (NSDictionary<NSString *, id> *)dictionaryForKey:(NSString *)key;

+ (NSData *)dataForKey:(NSString *)key;

+ (NSArray<NSString *> *)stringArrayForKey:(NSString *)key;

+ (NSInteger)integerForKey:(NSString *)key;

+ (float)floatForKey:(NSString *)key;

+ (double)doubleForKey:(NSString *)key;

+ (BOOL)boolForKey:(NSString *)key;

+ (NSURL *)URLForKey:(NSString *)key;

#pragma mark - 类删除值

+ (BOOL)removeObjectForKey:(NSString *)key synchronize:(BOOL)isSynchronize;

#pragma mark - 类设值

+ (BOOL)setObject:(id)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize;

+ (BOOL)setInteger:(NSInteger)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize;

+ (BOOL)setFloat:(float)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize;

+ (BOOL)setDouble:(double)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize;

+ (BOOL)setBool:(BOOL)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize;

+ (BOOL)setURL:(NSURL *)url forKey:(NSString *)key synchronize:(BOOL)isSynchronize;

#pragma mark - 实例删除值

- (BOOL)synchronizeRemoveObjectForKey:(NSString *)key;

#pragma mark - 实例设值

- (BOOL)setObject4synchronize:(id)value forKey:(NSString *)key;

- (BOOL)setInteger4synchronize:(NSInteger)value forKey:(NSString *)key;

- (BOOL)setFloat4synchronize:(float)value forKey:(NSString *)key;

- (BOOL)setDouble4synchronize:(double)value forKey:(NSString *)key;

- (BOOL)setBool4synchronize:(BOOL)value forKey:(NSString *)key;

- (BOOL)setURL4synchronize:(NSURL *)url forKey:(NSString *)key;


@end

NS_ASSUME_NONNULL_END
