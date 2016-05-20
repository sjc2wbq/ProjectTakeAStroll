//
//  DetailViewModel.h
//  MyProject
//
//  Created by 时俊川 on 16/2/29.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailNetManager.h"
#import "NSObject+ViewModel.h"
@interface DetailViewModel : NSObject

- (NSString *)detailMessage:(NSInteger)row;
- (NSString *)IDofDetail:(NSInteger)row;
//存列表
@property (nonatomic) NSMutableArray *IDList;
@property (nonatomic) NSMutableArray *IntroList;

- (void)getDetailDataWithID:(NSString *)ID completionHanle:(void (^)(NSError *error))completionHandle;
@end
