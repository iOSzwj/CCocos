//
//  NSString+sec.h
//  Demo
//
//  Created by 张文军 on 2018/11/12.
//  Copyright © 2018 张文军. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (sec)
    
@property (readonly) NSString *urlEncoding;
@property (readonly) NSString *urlDecoding;

@property (readonly) NSString *percentEncoding;
@property (readonly) NSString *percentDecoding;

@property (readonly) NSString *md5String;
    
-(NSString *)base64ForKey:(NSString *)key;
-(NSString *)decryptBase64ForKey:(NSString *)key;
    
@end

NS_ASSUME_NONNULL_END
