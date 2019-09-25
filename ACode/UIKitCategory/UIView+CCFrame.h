//
//  UIView+frame.h
//  QMDemo
//
//  Created by 张文军 on 2018/11/16.
//  Copyright © 2018 张文军. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (CCFrame)

@property (nonatomic, assign) CGFloat cc_x;
@property (nonatomic, assign) CGFloat cc_y;
@property (nonatomic, assign) CGFloat cc_width;
@property (nonatomic, assign) CGFloat cc_height;

@property (nonatomic, assign) CGFloat cc_centerX;
@property (nonatomic, assign) CGFloat cc_centerY;

@property (nonatomic, assign, readonly) CGFloat cc_top;
@property (nonatomic, assign, readonly) CGFloat cc_bottom;
@property (nonatomic, assign, readonly) CGFloat cc_left;
@property (nonatomic, assign, readonly) CGFloat cc_right;

@end

NS_ASSUME_NONNULL_END
