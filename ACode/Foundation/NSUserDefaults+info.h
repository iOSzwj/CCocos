//
//  NSUserDefaults+info.h
//  Demo
//
//  Created by 张文军 on 2019/3/6.
//  Copyright © 2019 张文军. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSUserDefaults (info)

@property (class, nonatomic, readonly) NSArray *appleLanguages;
@property (class, nonatomic, readonly) NSString *appleLanguage;

@end

NS_ASSUME_NONNULL_END
