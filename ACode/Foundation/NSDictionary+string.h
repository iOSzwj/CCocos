//
//  NSDictionary+string.h
//  QMDemo
//
//  Created by 张文军 on 2018/11/27.
//  Copyright © 2018 张文军. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (string)

+(instancetype)dictWithQuery:(NSString *)query;

-(NSString *)jsonString;

@end

NS_ASSUME_NONNULL_END
