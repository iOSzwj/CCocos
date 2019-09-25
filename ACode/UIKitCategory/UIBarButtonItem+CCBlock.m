//
//  UIBarButtonItem+BlocksKit.m
//  BlocksKit
//

#import <objc/runtime.h>
#import "UIBarButtonItem+CCBlock.h"

static const void *CCBarButtonItemBlockKey = &CCBarButtonItemBlockKey;

@interface UIBarButtonItem (CCBlockPrivate)

- (void)cc_handleAction:(UIBarButtonItem *)sender;

@end

@implementation UIBarButtonItem (CCBlock)

- (id)initWithHandler:(void (^)(id sender))action{
    self = [self initWithBarButtonSystemItem:0 target:self action:@selector(cc_handleAction:)];
    if (!self) return nil;
    objc_setAssociatedObject(self, CCBarButtonItemBlockKey, action, OBJC_ASSOCIATION_COPY_NONATOMIC);
    return self;
}

- (id)initWithImage:(UIImage *)image handler:(void (^)(id sender))action{
    self = [self initWithImage:image style:0 target:self action:@selector(cc_handleAction:)];
    if (!self) return nil;
    objc_setAssociatedObject(self, CCBarButtonItemBlockKey, action, OBJC_ASSOCIATION_COPY_NONATOMIC);
    return self;
}

- (id)initWithImage:(UIImage *)image landscapeImagePhone:(UIImage *)landscapeImagePhone handler:(void (^)(id sender))action{
    self = [self initWithImage:image landscapeImagePhone:landscapeImagePhone style:0 target:self action:@selector(cc_handleAction:)];
    if (!self) return nil;
    objc_setAssociatedObject(self, CCBarButtonItemBlockKey, action, OBJC_ASSOCIATION_COPY_NONATOMIC);
    return self;
}

- (id)initWithTitle:(NSString *)title handler:(void (^)(id sender))action{
    self = [self initWithTitle:title style:0 target:self action:@selector(cc_handleAction:)];
    if (!self) return nil;
    objc_setAssociatedObject(self, CCBarButtonItemBlockKey, action, OBJC_ASSOCIATION_COPY_NONATOMIC);
    return self;
}

- (void)cc_handleAction:(UIBarButtonItem *)sender{
    void (^block)(id) = objc_getAssociatedObject(self, CCBarButtonItemBlockKey);
    if (block) block(self);
}

@end
