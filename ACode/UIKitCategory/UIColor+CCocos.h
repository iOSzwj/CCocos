//
//  UIColor+CCocos.h
//  stitchingImages
//
//  Created by ioszwj on 2019/9/27.
//  Copyright © 2019 hare. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (CCocos)

+(UIColor *)cc_randomColor;

/** 灰色 1黑，0白*/
+(UIColor *)cc_colorWithGray:(CGFloat)gray;

@end

NS_ASSUME_NONNULL_END
