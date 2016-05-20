//
//  InfoListViewModel.m
//  MyProject
//
//  Created by 时俊川 on 16/2/26.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import "InfoListViewModel.h"
#import "CacheManager.h"
#define kDetailPath @"http://woliuda.com/Api/Detail?0.7018599139992148&id=%d&token=9lYXOoPsxImt2QeL4VrhcfACeHnTegNfVeBoHAgqGfc"
@implementation InfoListViewModel
- (instancetype)initWithType:(NewsType)type{
    if (self = [super init]) {
        _type = type;
        //        id obj = [CacheManager ]
    }
    return self;
}
- (instancetype)init{
    NSAssert(NO, @"%s, 必须使用initWithType:方法初始化", __FUNCTION__);
    return nil;
}
- (void)getDataWithRequestMode:(RequestMode)requestMode completionHanle:(void (^)(NSError *))completionHandle{
    NSInteger tmpPage = 0;
    NSDate *date = [NSDate new];
    NSTimeInterval requestTime;
    int time;
    switch (requestMode) {
        case RequestModeRefresh: {
            tmpPage = 1;
            requestTime = 0;
            break;
        }
        case RequestModeMore: {
            tmpPage = _page + 1;
            requestTime = [date timeIntervalSince1970];
            time = (int)requestTime;
            
            break;
        }
    }
    self.dataTask = [InfoListNetManager getInfoListWithNewsType:self.type requestTime:@(requestTime).stringValue page:tmpPage completionHandle:^(InfoListModel *model, NSError *error) {
        if (!error) {
            if (requestMode == RequestModeRefresh) {
                [self.dataList removeAllObjects];
            }
            //            self.topList =
            [self.dataList addObjectsFromArray:model.data.list];
            _page = tmpPage;
            //            [CacheManager ]
        }
        completionHandle(error);
    }];
}
- (NSMutableArray *)dataList{
    if (!_dataList) {
        _dataList = [NSMutableArray new];
    }
    return _dataList;
}
- (NSInteger)rowNumber{
    return _dataList.count;
}
//topNumber
//
//- (BOOL)isHasTop{
//    
//}

- (InfoListListModel *)modelForRow:(NSInteger)row{
    return self.dataList[row];
}

- (NSURL *)iconURLForRow:(NSInteger)row{
    
    //    http://pic.woliuda.com/company/727/20160226/ILhmySpvcO.jpg!150X110
    //    http://pic.woliuda.com/company/727/20160226/XGUmSTHFRy.jpg!150X110
    NSString * path = [NSString stringWithFormat:@"http://pic.woliuda.com/company/%@/%@!150X110",[self modelForRow:row].company_id,[self modelForRow:row].main_photo];
    return [NSURL URLWithString:path];
}
- (NSString *)titleForRow:(NSInteger)row{
    return [self modelForRow:row].name;
}
- (NSString *)addTimeForRow:(NSInteger)row{
    return [self modelForRow:row].add_time;
}
- (NSString *)clickNumForRow:(NSInteger)row{
    return [self modelForRow:row].click_num;
}
- (NSString *)IDForRow:(NSInteger)row{
    return [self modelForRow:row].ID;
}
- (BOOL)normalStyleForRow:(NSInteger)row{
    //showtype 0正常.  1: 3张图
    return [[self modelForRow:row].is_multi isEqualToString:@"0"];
}
- (NSArray<NSURL *> *)iconURLsForRow:(NSInteger)row{
    NSMutableArray *picList = [NSMutableArray new];
    //    NSString *tmpStr = nil;
    //    NSArray *tmpArr = [tmpStr componentsSeparatedByString:[self modelForRow:row].main_photo];;
    NSArray *tmpArr = [[self modelForRow:row].main_photo componentsSeparatedByString:@","];
    for (int i = 0; i < tmpArr.count; i++) {
        NSString * path = [NSString stringWithFormat:@"http://pic.woliuda.com/company/%@/%@!150X110",[self modelForRow:row].company_id,tmpArr[i]];
        NSURL *url = [NSURL URLWithString:path];
        [picList addObject:url];
    }
    return [picList copy];
    
}
- (NSURL *)detailURLForRow:(NSInteger)row{
    //    http://woliuda.com/Api/Detail?0.009775501443073153&id=28084&token=9lYXOoPsxImt2QeL4VrhcfACeHnTegNfVeBoHAgqGfc
    NSString *ID = [self modelForRow:row].ID;
    NSString *path = [NSString stringWithFormat:kDetailPath,ID.intValue];
    NSLog(@"path %@",path);
    return [NSURL URLWithString:path];
}

@end
