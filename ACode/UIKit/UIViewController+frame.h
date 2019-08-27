//
//  UIViewController+frame.h
//  ZPCategoryDemo
//
//  Created by 张文军 on 2019/4/1.
//  Copyright © 2019 hare. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (frame)

@property (nonatomic, assign, readonly) CGFloat top;
@property (nonatomic, assign, readonly) CGFloat bottom;

@end

NS_ASSUME_NONNULL_END
