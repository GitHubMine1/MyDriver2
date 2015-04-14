//
//  CheckUtil.m
//  MyDriver
//
//  Created by 卢群 on 15/4/14.
//  Copyright (c) 2015年 1018. All rights reserved.
//

#import "CheckUtil.h"
#import "User.h"

@implementation CheckUtil

+ (BOOL)checkUser:(User *)user
{
    return [self checkPhoneNum:user.phoneNum] && [self checkWorkNum:user.workNum];
}

+ (BOOL)checkWorkNum:(NSString *)workNum
{
    // 是否以1018开头 (给用户的键盘是number pad 所以不用考虑英文)
    return ([workNum rangeOfString:@"1018"].location == 0);
}

+ (BOOL)checkPhoneNum:(NSString *)phoneNum
{
    // 长度是否11位
    return 11 == phoneNum.length;
}
@end
