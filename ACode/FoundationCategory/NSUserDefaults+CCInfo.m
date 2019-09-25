//
//  NSUserDefaults+info.m
//  Demo
//
//  Created by 张文军 on 2019/3/6.
//  Copyright © 2019 张文军. All rights reserved.
//

#import "NSUserDefaults+CCInfo.h"
#import "NSUserDefaults+CCValue.h"

@implementation NSUserDefaults (CCInfo)

+(NSArray *)appleLanguages{
    return [self cc_obj4key:@"AppleLanguages"];
}
+(NSString *)appleLanguage{
    
    NSArray *arr = [self appleLanguages];
    if (arr == nil) {
        return @"";
    }
    if (arr.count == 0) {
        return @"";
    }
    return [arr firstObject];
}

@end
