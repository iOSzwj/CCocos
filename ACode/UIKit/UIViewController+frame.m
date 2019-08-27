//
//  UIViewController+frame.m
//  ZPCategoryDemo
//
//  Created by 张文军 on 2019/4/1.
//  Copyright © 2019 hare. All rights reserved.
//

#import "UIViewController+frame.h"

@implementation UIViewController (frame)

-(CGFloat)top{
    
    UINavigationBar *bar = self.navigationController.navigationBar;
    if (bar && bar.hidden == NO) {
        CGRect rect = [bar convertRect:bar.bounds toView:nil];
        return CGRectGetMaxY(rect);
    }
    return self.view.safeAreaInsets.top;
}
-(CGFloat)bottom{
    
    UITabBar *bar = self.tabBarController.tabBar;
    if (bar && bar.hidden == NO) {
        CGRect rect = [bar convertRect:bar.bounds toView:nil];
        CGFloat h = UIScreen.mainScreen.bounds.size.height - rect.origin.y;
        return h==0?self.view.safeAreaInsets.bottom:h;
    }
    return self.view.safeAreaInsets.bottom;
}

@end
