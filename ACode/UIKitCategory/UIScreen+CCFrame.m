//
//  UIScreen+frame.m
//  QMDemo
//
//  Created by 张文军 on 2018/11/16.
//  Copyright © 2018 张文军. All rights reserved.
//

#import "UIScreen+CCFrame.h"

@implementation UIScreen (CCFrame)

+(CGFloat)cc_width{
    return [UIScreen mainScreen].bounds.size.width;
}
+(CGFloat)cc_height{
    return [UIScreen mainScreen].bounds.size.height;
}
+(CGSize)cc_size{
    return [UIScreen mainScreen].bounds.size;
}

@end
