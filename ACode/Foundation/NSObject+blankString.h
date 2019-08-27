//
//  NSObject+blankString.h
//  Demo
//
//  Created by 张文军 on 2018/11/12.
//  Copyright © 2018 张文军. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (blankString)

/** 排除空的字符串*/
- (NSString *)excludeBlankString:(NSString *)string;
/** 排除空的字符串*/
+ (NSString *)excludeBlankString:(NSString *)string;
/** 判断字符串是否为空 */
- (BOOL)isBlankString:(NSString *)string;
/** 判断字符串是否为空 */
+ (BOOL)isBlankString:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
