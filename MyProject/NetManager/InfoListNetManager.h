//
//  InfoListNetManager.h
//  MyProject
//
//  Created by 时俊川 on 16/2/26.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+AFNetworking.h"
#import "InfoListModel.h"

typedef NS_ENUM(NSUInteger, NewsType) {
    NewsTypeTuiJian, //推荐
    NewsTypeQuWen,   //趣闻
    NewsTypeReYing,  //热映
    NewsTypeLiCai,   //理财
    NewsTypeQingGan, //情感
    NewsTypeYangSheng,//养生
    NewsTypeBuaGua,   //八卦
    NewsTypeShiShang, //时尚
    NewsTypeGongYi,   //公益
    NewsTypeTiTan,    //体坛
    NewsTypeGaoXiao,  //搞笑
    NewsTypeMeiShi,   //美食
    NewsTypeXingZuo,  //星座
};

@interface InfoListNetManager : NSObject
+ (id)getInfoListWithNewsType:(NewsType)type requestTime:(NSString *)requestTime page:(NSInteger)page completionHandle:kCompetionHandleBlock;


@end
