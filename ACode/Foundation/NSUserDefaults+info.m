//
//  NSUserDefaults+info.m
//  Demo
//
//  Created by 张文军 on 2019/3/6.
//  Copyright © 2019 张文军. All rights reserved.
//

#import "NSUserDefaults+info.h"
#import "NSUserDefaults+value.h"

@implementation NSUserDefaults (info)

+(NSArray *)appleLanguages{
    return [self objectForKey:@"AppleLanguages"];
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
