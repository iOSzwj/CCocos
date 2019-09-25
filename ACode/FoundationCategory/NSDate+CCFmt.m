//
//  NSDate+fmt.m
//  Demo
//
//  Created by 张文军 on 2018/11/12.
//  Copyright © 2018 张文军. All rights reserved.
//

#import "NSDate+CCFmt.h"

@implementation NSDate (CCFmt)

-(NSString *)cc_timeIntervalString{
    return [NSString stringWithFormat:@"%.0lf",self.timeIntervalSince1970];
}

-(NSString *)cc_string4fmt:(NSString *)fmt{
    
    if (fmt == nil || fmt.length == 0) {
        fmt = @"yyyy-MM-dd hh:mm:ss";
    }
    NSDateFormatter *dfmt = [[NSDateFormatter alloc] init];
    dfmt.dateFormat = fmt;
    return [dfmt stringFromDate:self];
}

@end
