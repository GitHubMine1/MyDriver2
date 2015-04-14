//
//  LQLoginViewController.m
//  MyDriver
//
//  Created by 卢群 on 15/4/14.
//  Copyright (c) 2015年 1018. All rights reserved.
//

#import "LQLoginViewController.h"
#import "User.h"
#import "CheckUtil.h"
#import "MBProgressHUD.h"
#import "MBProgressHUD+MJ.h"

@interface LQLoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *workNumLabel;
@property (weak, nonatomic) IBOutlet UITextField *phoneLabel;

@end

@implementation LQLoginViewController


- (IBAction)login:(id)sender
{
    // 移除键盘
    [self.view endEditing:YES];
    

    // 验证用户
    User *user = [User UserWithWorkNum:self.workNumLabel.text andPhoneNum:self.phoneLabel.text];
    if ([CheckUtil checkUser:user]) {
        NSLog(@"用户验证合法，正在向服务器发送请求");
        // 显示正在登陆
        [MBProgressHUD showMessage:@"正在登陆" toView:self.view];
        // 发送请求
        
    } else {
        NSLog(@"验证失败!");
        [MBProgressHUD showError:@"输入信息有误!"];
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
    [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
}

@end
