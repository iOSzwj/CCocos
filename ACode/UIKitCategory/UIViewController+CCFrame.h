//
//  UIViewController+frame.h
//  ZPCategoryDemo
//
//  Created by 张文军 on 2019/4/1.
//  Copyright © 2019 hare. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (CCFrame)

@property (nonatomic, assign, readonly) CGFloat cc_top;
@property (nonatomic, assign, readonly) CGFloat cc_bottomH;
@property (nonatomic, assign, readonly) CGFloat cc_bottomY;

@end

NS_ASSUME_NONNULL_END
