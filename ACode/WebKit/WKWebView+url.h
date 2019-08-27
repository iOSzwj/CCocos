//
//  WKWebView+url.h
//  QMDemo
//
//  Created by 张文军 on 2019/3/11.
//  Copyright © 2019 张文军. All rights reserved.
//

#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WKWebView (url)

-(WKNavigation *)loadURL:(NSURL *)url;
-(WKNavigation *)loadPath:(NSString *)path;

@end

NS_ASSUME_NONNULL_END
