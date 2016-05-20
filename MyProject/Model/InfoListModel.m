//
//  InfoListModel.m
//  MyProject
//
//  Created by 时俊川 on 16/2/26.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import "InfoListModel.h"

@implementation InfoListModel
MJCodingImplementation
@end
@implementation InfoListDataModel
MJCodingImplementation
+ (NSDictionary *)objectClassInArray{
    return @{@"list" : [InfoListListModel class]};
}

@end


@implementation InfoListListModel
MJCodingImplementation
+ (NSDictionary *)replaceKeyFromPropertyName{
    return @{@"ID": @"id"};
}
@end


