//
//  ViewController.m
//  APodDemo
//
//  Created by ioszwj on 2019/9/30.
//  Copyright © 2019 hare. All rights reserved.
//

#import "ViewController.h"
#import <CCocos/MBProgressHUD+CCocos.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
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
