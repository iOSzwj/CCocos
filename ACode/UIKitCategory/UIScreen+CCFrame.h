//
//  UIScreen+frame.h
//  QMDemo
//
//  Created by 张文军 on 2018/11/16.
//  Copyright © 2018 张文军. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIScreen (CCFrame)

@property (class, readonly) CGFloat cc_width;
@property (class, readonly) CGFloat cc_height;
@property (class, readonly) CGSize cc_size;

@end

NS_ASSUME_NONNULL_END
