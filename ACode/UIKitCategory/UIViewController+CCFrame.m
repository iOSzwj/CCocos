//
//  UIViewController+frame.m
//  ZPCategoryDemo
//
//  Created by 张文军 on 2019/4/1.
//  Copyright © 2019 hare. All rights reserved.
//

#import "UIViewController+CCFrame.h"

@implementation UIViewController (CCFrame)

-(CGFloat)cc_top{
    
    UINavigationBar *bar = self.navigationController.navigationBar;
    if (bar && bar.hidden == NO) {
        CGRect rect = [bar convertRect:bar.bounds toView:nil];
        return CGRectGetMaxY(rect);
    }
    if (@available(iOS 11.0, *)) {
        return self.view.safeAreaInsets.top;
    } else {
        return UIApplication.sharedApplication.statusBarHidden ? 0 : 20;
    }
}
-(CGFloat)cc_bottom{
    
    UITabBar *bar = self.tabBarController.tabBar;
    if (bar && bar.hidden == NO) {
        CGRect rect = [bar convertRect:bar.bounds toView:nil];
        CGFloat h = UIScreen.mainScreen.bounds.size.height - rect.origin.y;
        return h;
    }
    if (@available(iOS 11.0, *)) {
        return self.view.safeAreaInsets.bottom;
    } else {
        return 0;
    }
}

@end
