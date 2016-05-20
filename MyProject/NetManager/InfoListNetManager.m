//
//  InfoListNetManager.m
//  MyProject
//
//  Created by 时俊川 on 16/2/26.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import "InfoListNetManager.h"
#import "InfoListPath.h"

@implementation InfoListNetManager

+ (id)getInfoListWithNewsType:(NewsType)type requestTime:(NSString *)requestTime page:(NSInteger)page completionHandle:(void (^)(id, NSError *))completionHandle{
    NSString *path = nil;
//    switch (type) {
//        case NewsTypeTuiJian:
//            path = [NSString stringWithFormat:kRecommendPath,page,requestTime];
//            break;
//        default:
//            break;
//    }
    switch (type) {
        case NewsTypeTuiJian: {
            path = [NSString stringWithFormat:kTuiJianPath,page,requestTime];
            break;
        }
        case NewsTypeQuWen: {
            path = [NSString stringWithFormat:kQuWenPath,page,requestTime];
            break;
        }
        case NewsTypeReYing: {
            path = [NSString stringWithFormat:kReYingPath,page,requestTime];
            break;
        }
        case NewsTypeLiCai: {
            path = [NSString stringWithFormat:kLiCaiPath,page,requestTime];
            break;
        }
        case NewsTypeQingGan: {
            path = [NSString stringWithFormat:kQingGanPath,page,requestTime];
            break;
        }
        case NewsTypeYangSheng: {
            path = [NSString stringWithFormat:kYangShengPath,page,requestTime];
            break;
        }
        case NewsTypeBuaGua: {
            path = [NSString stringWithFormat:kBaGuaPath,page,requestTime];
            break;
        }
        case NewsTypeShiShang: {
            path = [NSString stringWithFormat:kShiShangPath,page,requestTime];
            break;
        }
        case NewsTypeGongYi: {
            path = [NSString stringWithFormat:kGongYiPath,page,requestTime];
            break;
        }
        case NewsTypeTiTan: {
            path = [NSString stringWithFormat:kTiTanPath,page,requestTime];
            break;
        }
        case NewsTypeGaoXiao: {
            path = [NSString stringWithFormat:kGaoXiaoPath,page,requestTime];
            break;
        }
        case NewsTypeMeiShi: {
            path = [NSString stringWithFormat:kMeiShiPath,page,requestTime];
            break;
        }
        case NewsTypeXingZuo: {
            path = [NSString stringWithFormat:kXingZuoPath,page,requestTime];
            break;
        }
    }
    return [self GET:path parameters:nil progress:nil completionHandle:^(id responseObj, NSError *error) {
        completionHandle([InfoListModel parse:responseObj],error);
    }];
}





@end
