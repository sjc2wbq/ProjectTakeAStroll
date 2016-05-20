//
//  DetailModel.m
//  MyProject
//
//  Created by 时俊川 on 16/2/29.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import "DetailModel.h"

@implementation DetailModel

@end
@implementation DetailDataModel

+ (NSDictionary *)objectClassInArray{
    return @{@"cmd_list" : [DetailCmd_ListModel class]};
}

+ (NSDictionary *)replaceKeyFromPropertyName{
    return @{@"ne_introduc":@"new_introduce",@"ID":@"id"};
}

@end


@implementation DetailAdModel

@end


@implementation ModelShare_UrlDetail

@end


@implementation DetailCmd_ListModel

@end


