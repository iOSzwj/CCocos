//
//  HVerticalButton.m
//  bjabn
//
//  Created by hare on 2017/4/21.
//  Copyright © 2017年 bjabn. All rights reserved.
//

#import "CCVerticalButton.h"

@implementation CCVerticalButton

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.titleLabel sizeToFit];
    
    CGFloat h = self.bounds.size.height;
    CGFloat h4image = self.imageView.bounds.size.height;
    CGFloat h4title = self.titleLabel.bounds.size.height;
    
    CGRect frame = self.imageView.frame;
    frame.origin.y = (h - h4image - h4title - 8 ) / 2;
    self.imageView.frame = frame;
    
    CGFloat w = self.bounds.size.width;
    
    CGPoint center = self.imageView.center;
    center.x = w / 2;
    self.imageView.center = center;
    
    center = self.titleLabel.center;
    center.x = w / 2;
    self.titleLabel.center = center;
    
    frame = self.titleLabel.frame;
    frame.origin.y = CGRectGetMaxY(self.imageView.frame)+8;
    self.titleLabel.frame = frame;
}

@end
