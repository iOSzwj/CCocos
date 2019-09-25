//
//  NSDictionary+string.m
//  QMDemo
//
//  Created by 张文军 on 2018/11/27.
//  Copyright © 2018 张文军. All rights reserved.
//

#import "NSDictionary+CCString.h"
#import "NSObject+CCBlankString.h"

@implementation NSDictionary (CCString)

/** @"a=2&c=3" 转{"a"="2","c"="3"} "*/
+(instancetype)cc_dictWithQuery:(NSString *)query{
    
    if ([self cc_isBlankString:query]) {
        return nil;
    }
    if ([query containsString:@"="]==NO) {
        return nil;
    }
    NSMutableDictionary *mdict = [NSMutableDictionary new];
    NSArray *pragmasArr = [query componentsSeparatedByString:@"&"];
    for (NSString *str in pragmasArr) {
        if ([str containsString:@"="]==NO) {
            continue;
        }
        NSArray *arr = [str componentsSeparatedByString:@"="];
        if (arr.count != 2) {
            continue;
        }
        mdict[arr.firstObject] = arr.lastObject;
    }
    
    return [mdict copy];
}


-(NSString *)cc_jsonString{
    
    if ([NSJSONSerialization isValidJSONObject:self] == NO) {
        return @"";
    }
    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
    if (error) {
        return @"";
    }
    return [[NSString alloc] initWithData:data encoding:4];
}

@end
