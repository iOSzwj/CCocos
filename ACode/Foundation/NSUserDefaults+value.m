//
//  NSUserDefaults+info.m
//  Demo
//
//  Created by 张文军 on 2019/3/6.
//  Copyright © 2019 张文军. All rights reserved.
//

#import "NSUserDefaults+value.h"

@implementation NSUserDefaults (value)

+ (id)objectForKey:(NSString *)key{
    return [[self standardUserDefaults] objectForKey:key];
}

+ (NSString *)stringForKey:(NSString *)key{
    return [[self standardUserDefaults] stringForKey:key];
}

+ (NSArray *)arrayForKey:(NSString *)key{
    return [[self standardUserDefaults] arrayForKey:key];
}

+ (NSDictionary<NSString *, id> *)dictionaryForKey:(NSString *)key{
    return [[self standardUserDefaults] dictionaryForKey:key];
}

+ (NSData *)dataForKey:(NSString *)key{
    return [[self standardUserDefaults] dataForKey:key];
}

+ (NSArray<NSString *> *)stringArrayForKey:(NSString *)key{
    return [[self standardUserDefaults] stringArrayForKey:key];
}

+ (NSInteger)integerForKey:(NSString *)key{
    return [[self standardUserDefaults] integerForKey:key];
}

+ (float)floatForKey:(NSString *)key{
    return [[self standardUserDefaults] floatForKey:key];
}

+ (double)doubleForKey:(NSString *)key{
    return [[self standardUserDefaults] doubleForKey:key];
}

+ (BOOL)boolForKey:(NSString *)key{
    return [[self standardUserDefaults] boolForKey:key];
}

+ (NSURL *)URLForKey:(NSString *)key{
    return [[self standardUserDefaults] URLForKey:key];
}

#pragma mark - 类删除值

+ (BOOL)removeObjectForKey:(NSString *)key synchronize:(BOOL)isSynchronize{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud removeObjectForKey:key];
    if (isSynchronize) {
        return [ud synchronize];
    }else{
        return true;
    }
}

#pragma mark - 类设值

+ (BOOL)setObject:(id)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:value forKey:key];
    
    if (isSynchronize) {
        return [ud synchronize];
    }else{
        return true;
    }
}

+ (BOOL)setInteger:(NSInteger)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:value forKey:key];
    
    if (isSynchronize) {
        return [ud synchronize];
    }else{
        return true;
    }
}

+ (BOOL)setFloat:(float)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setFloat:value forKey:key];
    
    if (isSynchronize) {
        return [ud synchronize];
    }else{
        return true;
    }
}

+ (BOOL)setDouble:(double)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setDouble:value forKey:key];
    
    if (isSynchronize) {
        return [ud synchronize];
    }else{
        return true;
    }
}

+ (BOOL)setBool:(BOOL)value forKey:(NSString *)key synchronize:(BOOL)isSynchronize{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:value forKey:key];
    
    if (isSynchronize) {
        return [ud synchronize];
    }else{
        return true;
    }
}

+ (BOOL)setURL:(NSURL *)url forKey:(NSString *)key synchronize:(BOOL)isSynchronize{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setURL:url forKey:key];
    
    if (isSynchronize) {
        return [ud synchronize];
    }else{
        return true;
    }
}

#pragma mark - 实例删除值

- (BOOL)synchronizeRemoveObjectForKey:(NSString *)key{
    [self removeObjectForKey:key];
    return [self synchronize];
}

#pragma mark - 实例设值

- (BOOL)setObject4synchronize:(id)value forKey:(NSString *)key{
    [self setObject:value forKey:key];
    return [self synchronize];
}

- (BOOL)setInteger4synchronize:(NSInteger)value forKey:(NSString *)key{
    [self setInteger:value forKey:key];
    return [self synchronize];
}

- (BOOL)setFloat4synchronize:(float)value forKey:(NSString *)key{
    [self setFloat:value forKey:key];
    return [self synchronize];
}

- (BOOL)setDouble4synchronize:(double)value forKey:(NSString *)key{
    [self setDouble:value forKey:key];
    return [self synchronize];
}

- (BOOL)setBool4synchronize:(BOOL)value forKey:(NSString *)key{
    [self setBool:value forKey:key];
    return [self synchronize];
}

- (BOOL)setURL4synchronize:(NSURL *)url forKey:(NSString *)key{
    [self setURL:url forKey:key];
    return [self synchronize];
}

@end
