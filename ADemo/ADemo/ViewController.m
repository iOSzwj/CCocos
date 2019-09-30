//
//  ViewController.m
//  ADemo
//
//  Created by ioszwj on 2019/8/27.
//  Copyright © 2019 hare. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import "MBProgressHUD+CCocos.h"

@interface ViewController ()

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    static int i = 0;
    switch (i) {
        case 0:
            [MBProgressHUD cc_showErrorMsg:@"失败"];
            break;
            case 1:
            [MBProgressHUD cc_showSuccessMsg:@"成功"];
            break;
            case 2:
            [MBProgressHUD cc_showWaitingMsg:@"等着把"];
            break;
            case 3:
            [MBProgressHUD cc_hideProgress];
            break;
            
        default:
            break;
    }
    i++;
    i = i%4;
}

@end





