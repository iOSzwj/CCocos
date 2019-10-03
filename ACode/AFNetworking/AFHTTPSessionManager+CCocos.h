//
//  AFHTTPSessionManager+CCocos.h
//  ADemo
//
//  Created by ioszwj on 2019/10/3.
//  Copyright © 2019 hare. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^CCSuccessBlock)(id result);
typedef void(^CCFailueBlock)(NSError * _Nullable error);

@interface AFHTTPSessionManager (CCocos)

@property (nonatomic, readonly) NSString *cc_userAgent;

+(AFHTTPSessionManager *)cc_defaultManager;

-(void)cc_setHeaders:(NSDictionary *)dict;

-(NSURLSessionDataTask *)cc_get:(NSString *)path parameters:(NSDictionary *)params;
-(NSURLSessionDataTask *)cc_post:(NSString *)path parameters:(NSDictionary *)params;

-(NSURLSessionDataTask *)cc_get:(NSString *)path parameters:(NSDictionary *)params success:(CCSuccessBlock _Nullable)success failure:(CCFailueBlock _Nullable)failure;
-(NSURLSessionDataTask *)cc_post:(NSString *)path parameters:(NSDictionary *)params success:(CCSuccessBlock _Nullable)success failure:(CCFailueBlock _Nullable)failure;

@end

NS_ASSUME_NONNULL_END
