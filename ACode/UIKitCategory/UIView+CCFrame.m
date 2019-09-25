//
//  UIView+frame.m
//  QMDemo
//
//  Created by 张文军 on 2018/11/16.
//  Copyright © 2018 张文军. All rights reserved.
//

#import "UIView+CCFrame.h"

@implementation UIView (CCFrame)

-(CGFloat)cc_x{
    return self.frame.origin.x;
}
-(CGFloat)cc_y{
    return self.frame.origin.y;
}
-(CGFloat)cc_width{
    return self.bounds.size.width;
}
-(CGFloat)cc_height{
    return self.bounds.size.height;
}

-(void)setCc_x:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}
-(void)setCc_y:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}
-(void)setCc_width:(CGFloat)width{
    CGRect rect = self.bounds;
    rect.size.width = width;
    self.bounds = rect;
}
-(void)setCc_height:(CGFloat)height{
    CGRect rect = self.bounds;
    rect.size.height = height;
    self.bounds = rect;
}

-(CGFloat)cc_centerX{
    return self.center.x;
}
-(CGFloat)cc_centerY{
    return self.center.y;
}

- (void)setCc_centerX:(CGFloat)cc_centerX{
    CGPoint center = self.center;
    center.x = cc_centerX;
    self.center = center;
}
-(void)setCc_centerY:(CGFloat)cc_centerY{
    CGPoint center = self.center;
    center.y = cc_centerY;
    self.center = center;
}

-(CGFloat)cc_top{
    return self.cc_y;
}
-(CGFloat)cc_bottom{
    return CGRectGetMaxY(self.frame);
}

-(CGFloat)cc_left{
    return self.cc_x;
}
-(CGFloat)cc_right{
    return CGRectGetMaxX(self.frame);
}


@end
