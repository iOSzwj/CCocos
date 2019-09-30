//
//  UIColor+CCocos.m
//  stitchingImages
//
//  Created by ioszwj on 2019/9/27.
//  Copyright © 2019 hare. All rights reserved.
//

#import "UIColor+CCocos.h"

@implementation UIColor (CCocos)

+(UIColor *)cc_randomColor{
    CGFloat r = arc4random()%256/255.0;
    CGFloat g = arc4random()%256/255.0;
    CGFloat b = arc4random()%256/255.0;
    return [UIColor colorWithRed:r green:g blue:b alpha:1.0];
}

/** 灰色 1黑，0白*/
+(UIColor *)cc_colorWithGray:(CGFloat)gray{
    return [UIColor colorWithWhite:1.0-gray alpha:1.0];
}

@end
