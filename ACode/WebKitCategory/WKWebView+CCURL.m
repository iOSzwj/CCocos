//
//  WKWebView+url.m
//  QMDemo
//
//  Created by 张文军 on 2019/3/11.
//  Copyright © 2019 张文军. All rights reserved.
//

#import "WKWebView+CCURL.h"

@implementation WKWebView (CCocos)

-(WKNavigation *)cc_loadURL:(NSURL *)url{
    if (url == nil) {
        return nil;
    }
    return [self loadRequest:[NSURLRequest requestWithURL:url]];
    
}
-(WKNavigation *)cc_loadPath:(NSString *)path{
    if (path == nil) {
        return nil;
    }
    NSURL *url = [NSURL URLWithString:path];
    return [self cc_loadURL:url];
}

@end
