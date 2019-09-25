 //
//  NSDate+fmt.h
//  Demo
//
//  Created by 张文军 on 2018/11/12.
//  Copyright © 2018 张文军. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface NSDate (CCFmtmt)

-(NSString *)cc_timeIntervalString;
-(NSString *)cc_string4fmt:(NSString *)fmt;

@end

NS_ASSUME_NONNULL_END
