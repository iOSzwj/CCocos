//
//  NSDate+fmt.m
//  Demo
//
//  Created by 张文军 on 2018/11/12.
//  Copyright © 2018 张文军. All rights reserved.
//

#import "NSDate+fmt.h"

@implementation NSDate (fmt)

/** 时间戳*/
-(NSString *)timeIntervalString{
    return [NSString stringWithFormat:@"%.0lf",self.timeIntervalSince1970];
}

-(NSString *)string4fmt:(NSString *)fmt{
    
    if (fmt == nil || fmt.length == 0) {
        return @"";
    }
    NSDateFormatter *dfmt = [[NSDateFormatter alloc] init];
    dfmt.dateFormat = fmt;
    return [dfmt stringFromDate:self];
}

@end
