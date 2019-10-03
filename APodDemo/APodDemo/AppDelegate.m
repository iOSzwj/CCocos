//
//  AppDelegate.m
//  APodDemo
//
//  Created by ioszwj on 2019/9/30.
//  Copyright © 2019 hare. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 初始化窗口
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    UIViewController *vc = [[ViewController alloc]init];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    
    return YES;
}



@end
