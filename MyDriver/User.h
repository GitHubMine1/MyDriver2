//
//  User.h
//  MyDriver
//
//  Created by 卢群 on 15/4/14.
//  Copyright (c) 2015年 1018. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
/**
 *  工号
 */
@property (nonatomic, strong) NSString *workNum;
/**
 *  手机号
 */
@property (nonatomic, copy) NSString *phoneNum;

// 初始化方法
- (instancetype)initWithWorkNum:(NSString *)workNum andPhoneNum:(NSString *)phoneNum;
+ (instancetype)UserWithWorkNum:(NSString *)workNum andPhoneNum:(NSString *)phoneNum;

@end
