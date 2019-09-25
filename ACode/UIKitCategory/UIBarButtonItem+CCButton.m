//
//  UIBarButtonItem+button.m
//  Pods
//
//  Created by hare27 on 16/6/14.
//
//

#import "UIBarButtonItem+CCButton.h"
#import "UIControl+CCBlock.h"

@implementation UIBarButtonItem (button)

+ (instancetype)itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName handler:(void(^)(id sender))handler{
    return [self itemWithTitle:nil ImageName:imageName highImageName:highImageName handler:handler];
}
+ (instancetype)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage handler:(void(^)(id sender))handler{
    return [self itemWithTitle:nil Image:image highImage:highImage handler:handler];
}
+ (instancetype)itemWithTitle:(NSString *)title ImageName:(NSString *)imageName highImageName:(NSString *)highImageName handler:(void(^)(id sender))handler{
    return [self itemWithTitle:title Image:[UIImage imageNamed:imageName] highImage:[UIImage imageNamed:highImageName] handler:handler];
}
+ (instancetype)itemWithTitle:(NSString *)title Image:(UIImage *)image highImage:(UIImage *)highImage handler:(void(^)(id sender))handler{
    UIButton *button = [[UIButton alloc] init];
    if (handler) {
        [button cc_addTouchUpInsideHandler:handler];
    }
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
    }
    [button setImage:image forState:UIControlStateNormal];
    if (highImage) {
        [button setImage:highImage forState:UIControlStateHighlighted];
    }
    [button sizeToFit];
    return [[self alloc] initWithCustomView:button];
}

@end
