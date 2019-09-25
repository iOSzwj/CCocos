//
//  NSString+sec.h
//  Demo
//
//  Created by 张文军 on 2018/11/12.
//  Copyright © 2018 张文军. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (CCHash)
    
@property (readonly) NSString *cc_urlEncoding;
@property (readonly) NSString *cc_urlDecoding;

@property (readonly) NSString *cc_percentEncoding;
@property (readonly) NSString *cc_percentDecoding;

@property (readonly) NSString *cc_md5String;
    
-(NSString *)cc_base64ForKey:(NSString *)key;
-(NSString *)cc_decryptBase64ForKey:(NSString *)key;
    
@end

NS_ASSUME_NONNULL_END
