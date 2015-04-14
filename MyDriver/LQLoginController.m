//
//  LQLoginController.m
//  MyDriver
//
//  Created by 卢群 on 15/4/14.
//  Copyright (c) 2015年 1018. All rights reserved.
//

#import "LQLoginController.h"

@interface LQLoginController ()

@end

@implementation LQLoginController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.view = [[NSBundle mainBundle] loadNibNamed:@"LoginController" owner:nil options:nil][0];
}



@end