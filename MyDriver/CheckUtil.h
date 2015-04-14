//
//  CheckUtil.h
//  MyDriver
//
//  Created by 卢群 on 15/4/14.
//  Copyright (c) 2015年 1018. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;
@interface CheckUtil : NSObject

/**
 *  验证一个User对象是否合法
 */
+ (BOOL)checkUser:(User *)user;

/**
 *  验证手机号
 */
+ (BOOL)checkPhoneNum:(NSString *)phoneNum;

/**
 *  验证工号
 */
+ (BOOL)checkWorkNum:(NSString *)workNum;
@end
