//
//  UIView+frame.m
//  QMDemo
//
//  Created by 张文军 on 2018/11/16.
//  Copyright © 2018 张文军. All rights reserved.
//

#import "UIView+frame.h"

@implementation UIView (frame)

-(CGFloat)x{
    return self.frame.origin.x;
}
-(CGFloat)y{
    return self.frame.origin.y;
}
-(CGFloat)width{
    return self.bounds.size.width;
}
-(CGFloat)height{
    return self.bounds.size.height;
}

-(void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}
-(void)setY:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}
-(void)setWidth:(CGFloat)width{
    CGRect rect = self.bounds;
    rect.size.width = width;
    self.bounds = rect;
}
-(void)setHeight:(CGFloat)height{
    CGRect rect = self.bounds;
    rect.size.height = height;
    self.bounds = rect;
}

-(CGFloat)top{
    return self.y;
}
-(CGFloat)bottom{
    return CGRectGetMaxY(self.frame);
}

-(CGFloat)left{
    return self.x;
}
-(CGFloat)right{
    return CGRectGetMaxX(self.frame);
}


@end
