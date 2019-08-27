//
//  WKWebView+url.m
//  QMDemo
//
//  Created by 张文军 on 2019/3/11.
//  Copyright © 2019 张文军. All rights reserved.
//

#import "WKWebView+url.h"

@implementation WKWebView (url)

-(WKNavigation *)loadURL:(NSURL *)url{
    if (url == nil) {
        return nil;
    }
    return [self loadRequest:[NSURLRequest requestWithURL:url]];
    
}
-(WKNavigation *)loadPath:(NSString *)path{
    if (path == nil) {
        return nil;
    }
    NSURL *url = [NSURL URLWithString:path];
    return [self loadURL:url];
}

@end
