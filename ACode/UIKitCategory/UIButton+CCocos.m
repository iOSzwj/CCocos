//
//  UIButton+CCocos.m
//  ADemo
//
//  Created by ioszwj on 2019/9/11.
//  Copyright © 2019 hare. All rights reserved.
//

#import "UIButton+CCocos.h"

@implementation UIButton (CCocos)
+(instancetype)cc_buttonWithTitle:(NSString *)title image:(UIImage *)image{
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setImage:image forState:UIControlStateNormal];
    [button sizeToFit];
    return button;
}
@end

