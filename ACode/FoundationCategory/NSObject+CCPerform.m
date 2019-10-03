//
//  NSObject+runtime.m
//  Demo
//
//  Created by 张文军 on 2018/11/12.
//  Copyright © 2018 张文军. All rights reserved.
//

#import "NSObject+CCPerform.h"
#import <objc/runtime.h>

@implementation NSObject (CCPerform)
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    
#pragma mark - 返回值为id类型
    
- (id)cc_executeSel:(SEL)sel{
    if ([self respondsToSelector:sel]==NO) {
        return nil;
    }
    Method method = class_getInstanceMethod(self.class, sel);
    char *returnType = method_copyReturnType(method);
    if (strcmp(returnType, "@") == 0) {
        return [self performSelector:sel];
    }
    return nil;
}
+ (id)cc_executeSel:(SEL)sel{
    if ([self respondsToSelector:sel]==NO) {
        return nil;
    }
    Method method = class_getClassMethod(self, sel);
    char *returnType = method_copyReturnType(method);
    if (strcmp(returnType, "@") == 0) {
        return [self performSelector:sel];
    }
    return nil;
}
- (id)cc_executeSelName:(NSString *)selName{
    SEL sel = NSSelectorFromString(selName);
    return [self cc_executeSel:sel];
}
+ (id)cc_executeSelName:(NSString *)selName{
    SEL sel = NSSelectorFromString(selName);
    return [self cc_executeSel:sel];
}
    
- (id)cc_executeSel:(SEL)sel obj:(id)obj{
    if ([self respondsToSelector:sel]==NO) {
        return nil;
    }
    Method method = class_getInstanceMethod(self.class, sel);
    char *returnType = method_copyReturnType(method);
    if (strcmp(returnType, "@") == 0) {
        return [self performSelector:sel withObject:obj];
    }
    return nil;
}
+ (id)cc_executeSel:(SEL)sel obj:(id)obj{
    if ([self respondsToSelector:sel]==NO) {
        return nil;
    }
    Method method = class_getClassMethod(self, sel);
    char *returnType = method_copyReturnType(method);
    if (strcmp(returnType, "@") == 0) {
        return [self performSelector:sel withObject:obj];
    }
    return nil;
}
- (id)cc_executeSelName:(NSString *)selName obj:(id)obj{
    SEL sel = NSSelectorFromString(selName);
    return [self cc_executeSel:sel obj:obj];
}
+ (id)cc_executeSelName:(NSString *)selName obj:(id)obj{
    SEL sel = NSSelectorFromString(selName);
    return [self cc_executeSel:sel obj:obj];
}
    
- (id)cc_executeSel:(SEL)sel obj:(id)obj1 obj:(id)obj2{
    if ([self respondsToSelector:sel]==NO) {
        return nil;
    }
    Method method = class_getInstanceMethod(self.class, sel);
    char *returnType = method_copyReturnType(method);
    if (strcmp(returnType, "@") == 0) {
        return [self performSelector:sel withObject:obj1 withObject:obj2];
    }
    return nil;
}
+ (id)cc_executeSel:(SEL)sel obj:(id)obj1 obj:(id)obj2{
    if ([self respondsToSelector:sel]==NO) {
        return nil;
    }
    Method method = class_getClassMethod(self, sel);
    char *returnType = method_copyReturnType(method);
    if (strcmp(returnType, "@") == 0) {
        return [self performSelector:sel withObject:obj1 withObject:obj2];
    }
    return nil;
}
- (id)cc_executeSelName:(NSString *)selName obj:(id)obj1 obj:(id)obj2{
    SEL sel = NSSelectorFromString(selName);
    return [self cc_executeSel:sel obj:obj1 obj:obj2];
}
+ (id)cc_executeSelName:(NSString *)selName obj:(id)obj1 obj:(id)obj2{
    SEL sel = NSSelectorFromString(selName);
    return [self cc_executeSel:sel obj:obj1 obj:obj2];
}
    
#pragma mark - 返回值为bool类型
    
- (BOOL)cc_bExecuteSel:(SEL)sel{
    if ([self respondsToSelector:sel]==NO) {
        return NO;
    }
    Method method = class_getInstanceMethod(self.class, sel);
    char *returnType = method_copyReturnType(method);
    if (strcmp(returnType, "B") == 0) {
        return (BOOL)[self performSelector:sel];
    }
    return NO;
}
+ (BOOL)cc_bExecuteSel:(SEL)sel{
    if ([self respondsToSelector:sel]==NO) {
        return NO;
    }
    Method method = class_getClassMethod(self, sel);
    char *returnType = method_copyReturnType(method);
    if (strcmp(returnType, "B") == 0) {
        return (BOOL)[self performSelector:sel];
    }
    return NO;
}
- (BOOL)cc_bExecuteSelName:(NSString *)selName{
    SEL sel = NSSelectorFromString(selName);
    return [self cc_bExecuteSel:sel];
}
+ (BOOL)cc_bExecuteSelName:(NSString *)selName{
    SEL sel = NSSelectorFromString(selName);
    return [self cc_bExecuteSel:sel];
}
    
- (BOOL)cc_bExecuteSel:(SEL)sel obj:(id)obj{
    if ([self respondsToSelector:sel]==NO) {
        return NO;
    }
    Method method = class_getInstanceMethod(self.class, sel);
    char *returnType = method_copyReturnType(method);
    if (strcmp(returnType, "B") == 0) {
        return (BOOL)[self performSelector:sel withObject:obj];
    }
    return NO;
}
+ (BOOL)cc_bExecuteSel:(SEL)sel obj:(id)obj{
    if ([self respondsToSelector:sel]==NO) {
        return NO;
    }
    Method method = class_getClassMethod(self, sel);
    char *returnType = method_copyReturnType(method);
    if (strcmp(returnType, "B") == 0) {
        return (BOOL)[self performSelector:sel withObject:obj];
    }
    return NO;
}
- (BOOL)cc_bExecuteSelName:(NSString *)selName obj:(id)obj{
    SEL sel = NSSelectorFromString(selName);
    return [self cc_bExecuteSel:sel obj:obj];
}
+ (BOOL)cc_bExecuteSelName:(NSString *)selName obj:(id)obj{
    SEL sel = NSSelectorFromString(selName);
    return [self cc_bExecuteSel:sel obj:obj];
}
    
- (BOOL)cc_bExecuteSel:(SEL)sel obj:(id)obj1 obj:(id)obj2{
    if ([self respondsToSelector:sel]==NO) {
        return NO;
    }
    Method method = class_getInstanceMethod(self.class, sel);
    char *returnType = method_copyReturnType(method);
    if (strcmp(returnType, "B") == 0) {
        return (BOOL)[self performSelector:sel withObject:obj1 withObject:obj2];
    }
    return NO;
}
+ (BOOL)cc_bExecuteSel:(SEL)sel obj:(id)obj1 obj:(id)obj2{
    if ([self respondsToSelector:sel]==NO) {
        return NO;
    }
    Method method = class_getClassMethod(self, sel);
    char *returnType = method_copyReturnType(method);
    if (strcmp(returnType, "B") == 0) {
        return (BOOL)[self performSelector:sel withObject:obj1 withObject:obj2];
    }
    return NO;
}
- (BOOL)cc_bExecuteSelName:(NSString *)selName obj:(id)obj1 obj:(id)obj2{
    SEL sel = NSSelectorFromString(selName);
    return [self cc_bExecuteSel:sel obj:obj1 obj:obj2];
}
+ (BOOL)cc_bExecuteSelName:(NSString *)selName obj:(id)obj1 obj:(id)obj2{
    SEL sel = NSSelectorFromString(selName);
    return [self cc_bExecuteSel:sel obj:obj1 obj:obj2];
}
    
#pragma clang diagnostic pop
@end
