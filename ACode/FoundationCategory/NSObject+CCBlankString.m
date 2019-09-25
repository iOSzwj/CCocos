//
//  NSObject+blankString.m
//  Demo
//
//  Created by 张文军 on 2018/11/12.
//  Copyright © 2018 张文军. All rights reserved.
//

#import "NSObject+CCBlankString.h"

@implementation NSObject (CCBlankString)

/** 排除空的字符串*/
- (NSString *)cc_excludeBlankString:(NSString *)string{
    return [self.class cc_excludeBlankString:string];
}
/** 排除空的字符串*/
+ (NSString *)cc_excludeBlankString:(NSString *)string{
    return [self cc_isBlankString:string] ? @"" : [string description];
}

/** 判断字符串是否为空 */
- (BOOL)cc_isBlankString:(NSString *)string{
    return [self.class cc_isBlankString:string];
}
/** 判断字符串是否为空 */
+ (BOOL)cc_isBlankString:(NSString *)string{
    
    if (string==nil || string==NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    if([string isEqualToString:@"(null)"] || [string isEqualToString:@"<null>"]){
        return YES;
    }
    return NO;
}

@end
