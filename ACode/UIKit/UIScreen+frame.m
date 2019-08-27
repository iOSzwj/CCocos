//
//  UIScreen+frame.m
//  QMDemo
//
//  Created by 张文军 on 2018/11/16.
//  Copyright © 2018 张文军. All rights reserved.
//

#import "UIScreen+frame.h"

@implementation UIScreen (frame)

+(CGFloat)width{
    return [UIScreen mainScreen].bounds.size.width;
}
+(CGFloat)height{
    return [UIScreen mainScreen].bounds.size.height;
}
+(CGSize)size{
    return [UIScreen mainScreen].bounds.size;
}

@end
