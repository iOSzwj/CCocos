//
//  UIControl+BlocksKit.h
//  BlocksKit
//

#import <UIKit/UIKit.h>

@interface UIControl (CCBlock)

- (void)cc_addEventHandler:(void (^)(id sender))handler forControlEvents:(UIControlEvents)controlEvents;

- (void)cc_addTouchUpInsideHandler:(void (^)(id sender))handler;

- (void)cc_removeEventHandlersForControlEvents:(UIControlEvents)controlEvents;

- (BOOL)cc_hasEventHandlersForControlEvents:(UIControlEvents)controlEvents;

@end
