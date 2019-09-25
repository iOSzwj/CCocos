//
//  NSUserDefaults+info.m
//  Demo
//
//  Created by 张文军 on 2019/3/6.
//  Copyright © 2019 张文军. All rights reserved.
//

#import "NSUserDefaults+CCValue.h"

@implementation NSUserDefaults (CCValue)

+ (id)cc_obj4key:(NSString *)key{
    return [[self standardUserDefaults] objectForKey:key];
}

+ (NSString *)cc_string4key:(NSString *)key{
    return [[self standardUserDefaults] stringForKey:key];
}

+ (NSArray *)cc_array4key:(NSString *)key{
    return [[self standardUserDefaults] arrayForKey:key];
}

+ (NSDictionary<NSString *, id> *)cc_dictionary4key:(NSString *)key{
    return [[self standardUserDefaults] dictionaryForKey:key];
}

+ (NSData *)cc_data4key:(NSString *)key{
    return [[self standardUserDefaults] dataForKey:key];
}

+ (NSArray<NSString *> *)cc_stringArray4key:(NSString *)key{
    return [[self standardUserDefaults] stringArrayForKey:key];
}

+ (NSInteger)cc_integer4key:(NSString *)key{
    return [[self standardUserDefaults] integerForKey:key];
}

+ (float)cc_float4key:(NSString *)key{
    return [[self standardUserDefaults] floatForKey:key];
}

+ (double)cc_double4key:(NSString *)key{
    return [[self standardUserDefaults] doubleForKey:key];
}

+ (BOOL)cc_bool4key:(NSString *)key{
    return [[self standardUserDefaults] boolForKey:key];
}

+ (NSURL *)cc_URL4key:(NSString *)key{
    return [[self standardUserDefaults] URLForKey:key];
}

#pragma mark - 类删除值

+ (BOOL)cc_removeObj4key:(NSString *)key synchronize:(BOOL)isSynchronize{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud removeObjectForKey:key];
    if (isSynchronize) {
        return [ud synchronize];
    }else{
        return true;
    }
}

#pragma mark - 类设值

+ (BOOL)cc_setObj:(id)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:value forKey:key];
    
    if (isSynchronize) {
        return [ud synchronize];
    }else{
        return true;
    }
}

+ (BOOL)cc_setInteger:(NSInteger)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:value forKey:key];
    
    if (isSynchronize) {
        return [ud synchronize];
    }else{
        return true;
    }
}

+ (BOOL)cc_setFloat:(float)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setFloat:value forKey:key];
    
    if (isSynchronize) {
        return [ud synchronize];
    }else{
        return true;
    }
}

+ (BOOL)cc_setDouble:(double)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setDouble:value forKey:key];
    
    if (isSynchronize) {
        return [ud synchronize];
    }else{
        return true;
    }
}

+ (BOOL)cc_setBool:(BOOL)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:value forKey:key];
    
    if (isSynchronize) {
        return [ud synchronize];
    }else{
        return true;
    }
}

+ (BOOL)cc_setURL:(NSURL *)url forKey:(NSString *)key synchronize:(BOOL)isSynchronize{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setURL:url forKey:key];
    
    if (isSynchronize) {
        return [ud synchronize];
    }else{
        return true;
    }
}

#pragma mark - 实例删除值

- (BOOL)cc_synchronizeRemoveObj4key:(NSString *)key{
    [self removeObjectForKey:key];
    return [self synchronize];
}

#pragma mark - 实例设值

- (BOOL)cc_setObj4synchronize:(id)value forKey:(NSString *)key{
    [self setObject:value forKey:key];
    return [self synchronize];
}

- (BOOL)cc_setInteger4synchronize:(NSInteger)value forKey:(NSString *)key{
    [self setInteger:value forKey:key];
    return [self synchronize];
}

- (BOOL)cc_setFloat4synchronize:(float)value forKey:(NSString *)key{
    [self setFloat:value forKey:key];
    return [self synchronize];
}

- (BOOL)cc_setDouble4synchronize:(double)value forKey:(NSString *)key{
    [self setDouble:value forKey:key];
    return [self synchronize];
}

- (BOOL)cc_setBool4synchronize:(BOOL)value forKey:(NSString *)key{
    [self setBool:value forKey:key];
    return [self synchronize];
}

- (BOOL)cc_setURL4synchronize:(NSURL *)url forKey:(NSString *)key{
    [self setURL:url forKey:key];
    return [self synchronize];
}

@end
