//
//  CCSpaceButton.m
//  stitchingImages
//  Created by ioszwj on 2019/10/3.
//  Copyright © 2019 hare. All rights reserved.
//

#import "CCSpaceButton.h"

@implementation CCSpaceButton

#pragma mark - 生命周期 Life Circle

-(instancetype)initWithType:(CCSpaceButtonType)type space:(CGFloat)space{
    self = [super init];
    if (self) {
        self.type = type;
        self.space = space;
    }
    return self;
}

+(instancetype)buttonWithType:(CCSpaceButtonType)type space:(CGFloat)space{
    return [[self alloc] initWithType:type space:space];
}

#pragma mark - 控制器生命周期 ViewController Life Circle

-(void)layoutSubviews{
    [super layoutSubviews];
    if (self.imageView) {
        CGRect frame = self.imageView.frame;
        if (_type == CCSpaceButtonTypeLeft) {
            frame.origin.x = _space;
        }else{
            frame.origin.x = self.bounds.size.width-frame.size.width-_space;
        }
        self.imageView.frame = frame;
    }
}

@end
