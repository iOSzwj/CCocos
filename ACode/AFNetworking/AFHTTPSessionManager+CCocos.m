//
//  AFHTTPSessionManager+CCocos.m
//  ADemo
//
//  Created by ioszwj on 2019/10/3.
//  Copyright © 2019 hare. All rights reserved.
//

#import "AFHTTPSessionManager+CCocos.h"

@implementation AFHTTPSessionManager (CCocos)

#pragma mark - 生命周期 Life Circle

+(AFHTTPSessionManager *)cc_defaultManager{
    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:nil sessionConfiguration:config];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/html", @"text/javascript",@"text/plain", nil];
    return manager;
}

#pragma mark - 公开的方法 public Methods

-(void)cc_setHeaders:(NSDictionary *)dict{
    if (dict == nil) {
        return;
    }
    if (dict.allKeys.count == 0) {
        return;
    }
    if (self.requestSerializer == nil) {
        return;
    }
    __weak typeof(self) _weakSelf = self;
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [_weakSelf.requestSerializer setValue:[obj description] forHTTPHeaderField:key];
    }];
}

-(NSURLSessionDataTask *)cc_get:(NSString *)path parameters:(NSDictionary *)params{
    return [self cc_get:path parameters:params success:nil failure:nil];
}
-(NSURLSessionDataTask *)cc_post:(NSString *)path parameters:(NSDictionary *)params{
    return [self cc_post:path parameters:params success:nil failure:nil];
}

-(NSURLSessionDataTask *)cc_get:(NSString *)path parameters:(NSDictionary *)params success:(CCSuccessBlock)success failure:(CCFailueBlock)failure{
    
    return [self GET:path parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

-(NSURLSessionDataTask *)cc_post:(NSString *)path parameters:(NSDictionary *)params success:(CCSuccessBlock)success failure:(CCFailueBlock)failure{
    return [self POST:path parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

#pragma mark - 懒加载 getter

-(NSString *)cc_userAgent{
    NSString *ua = self.requestSerializer.HTTPRequestHeaders[@"User-Agent"].description;
    if (ua == nil) {
        return @"";
    }
    if (ua.length == 0) {
        return @"";
    }
    return ua;
}

@end
