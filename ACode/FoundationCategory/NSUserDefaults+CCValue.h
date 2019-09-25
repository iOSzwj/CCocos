//
//  NSUserDefaults+info.h
//  Demo
//
//  Created by 张文军 on 2019/3/6.
//  Copyright © 2019 张文军. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSUserDefaults (CCValue)

#pragma mark - 取值

+ (id)cc_obj4key:(NSString *)key;

+ (NSString *)cc_string4key:(NSString *)key;

+ (NSArray *)cc_array4key:(NSString *)key;

+ (NSDictionary<NSString *, id> *)cc_dictionary4key:(NSString *)key;

+ (NSData *)cc_data4key:(NSString *)key;

+ (NSArray<NSString *> *)cc_stringArray4key:(NSString *)key;

+ (NSInteger)cc_integer4key:(NSString *)key;

+ (float)cc_float4key:(NSString *)key;

+ (double)cc_double4key:(NSString *)key;

+ (BOOL)cc_bool4key:(NSString *)key;

+ (NSURL *)cc_URL4key:(NSString *)key;

#pragma mark - 类删除值

+ (BOOL)cc_removeObj4key:(NSString *)key synchronize:(BOOL)isSynchronize;

#pragma mark - 类设值

+ (BOOL)cc_setObj:(id)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize;

+ (BOOL)cc_setInteger:(NSInteger)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize;

+ (BOOL)cc_setFloat:(float)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize;

+ (BOOL)cc_setDouble:(double)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize;

+ (BOOL)cc_setBool:(BOOL)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize;

+ (BOOL)cc_setURL:(NSURL *)url forKey:(NSString *)key synchronize:(BOOL)isSynchronize;

#pragma mark - 实例删除值

- (BOOL)cc_synchronizeRemoveObj4key:(NSString *)key;

#pragma mark - 实例设值

- (BOOL)cc_setObj4synchronize:(id)value forKey:(NSString *)key;

- (BOOL)cc_setInteger4synchronize:(NSInteger)value forKey:(NSString *)key;

- (BOOL)cc_setFloat4synchronize:(float)value forKey:(NSString *)key;

- (BOOL)cc_setDouble4synchronize:(double)value forKey:(NSString *)key;

- (BOOL)cc_setBool4synchronize:(BOOL)value forKey:(NSString *)key;

- (BOOL)cc_setURL4synchronize:(NSURL *)url forKey:(NSString *)key;


@end

NS_ASSUME_NONNULL_END
