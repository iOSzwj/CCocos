//
//  UIBarButtonItem+button.h
//  Pods
//
//  Created by hare27 on 16/6/14.
//
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (CCButton)

+ (instancetype)itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName handler:(void(^)(id sender))handler;
+ (instancetype)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage handler:(void(^)(id sender))handler;
+ (instancetype)itemWithTitle:(NSString *)title ImageName:(NSString *)imageName highImageName:(NSString *)highImageName handler:(void(^)(id sender))handler;
+ (instancetype)itemWithTitle:(NSString *)title Image:(UIImage *)image highImage:(UIImage *)highImage handler:(void(^)(id sender))handler;

@end
