//
//  User.m
//  MyDriver
//
//  Created by 卢群 on 15/4/14.
//  Copyright (c) 2015年 1018. All rights reserved.
//

#import "User.h"

@implementation User

- (instancetype)initWithWorkNum:(NSString *)workNum andPhoneNum:(NSString *)phoneNum
{
    if(self = [super init])
    {
        self.workNum = workNum;
        self.phoneNum = phoneNum;
    }
    return self;
}

+ (instancetype)UserWithWorkNum:(NSString *)workNum andPhoneNum:(NSString *)phoneNum
{
    return [[self alloc] initWithWorkNum:workNum andPhoneNum:phoneNum];
}
@end
