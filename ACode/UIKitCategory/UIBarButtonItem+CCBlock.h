//
//  UIBarButtonItem+BlocksKit.h
//  BlocksKit
//

#import <UIKit/UIKit.h>


@interface UIBarButtonItem (CCBlock)

- (id)initWithHandler:(void (^)(id sender))action;

- (id)initWithImage:(UIImage *)image handler:(void (^)(id sender))action;

- (id)initWithImage:(UIImage *)image landscapeImagePhone:(UIImage *)landscapeImagePhone handler:(void (^)(id sender))action;

- (id)initWithTitle:(NSString *)title handler:(void (^)(id sender))action;

@end
