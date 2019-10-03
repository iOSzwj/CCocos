//
//  CCSpaceButton.h
//  stitchingImages

//  限定左右间隙的按钮

//  Created by ioszwj on 2019/10/3.
//  Copyright © 2019 hare. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    CCSpaceButtonTypeLeft,
    CCSpaceButtonTypeRight
} CCSpaceButtonType;


@interface CCSpaceButton : UIButton

@property (nonatomic, assign) CCSpaceButtonType type;
@property (nonatomic, assign) CGFloat space;

-(instancetype)initWithType:(CCSpaceButtonType)type space:(CGFloat)space;
+(instancetype)buttonWithType:(CCSpaceButtonType)type space:(CGFloat)space;

@end

NS_ASSUME_NONNULL_END
