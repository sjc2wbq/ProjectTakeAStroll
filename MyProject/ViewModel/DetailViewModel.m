//
//  DetailViewModel.m
//  MyProject
//
//  Created by 时俊川 on 16/2/29.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import "DetailViewModel.h"

@implementation DetailViewModel
//- (NSString *)detailMessage:(NSInteger)row{
//    return [self modelForRow:row].intro;
//}
//- (DetailDataModel *)modelForRow:(NSInteger)row{
//    return self.dataList[row];
//}
- (NSString *)IDofDetail:(NSInteger)row{
    return self.IDList[row];
}
- (NSString *)detailMessage:(NSInteger)row{
    return self.IntroList[row];
}
- (void)getDetailDataWithID:(NSString *)ID completionHanle:(void (^)(NSError *error))completionHandle{
    self.dataTask = [DetailNetManager getDetailModelWithID:ID completionHandle:^(DetailModel *model, NSError *error) {
        NSLog(@"error %@",error);
        if (!error) {
            [self.IDList addObject:model.data.ID];
            [self.IntroList addObject:model.data.intro];
        }
        //completionHandle(error);
        completionHandle(nil);
    }];
    //completionHandle(nil);
}
- (NSMutableArray *)IDList{
    if (!_IDList) {
        _IDList = [NSMutableArray new];
    }
    return _IDList;
}
- (NSMutableArray *)IntroList{
    if (!_IntroList) {
        _IntroList = [NSMutableArray new];
    }
    return _IntroList;
}
@end
