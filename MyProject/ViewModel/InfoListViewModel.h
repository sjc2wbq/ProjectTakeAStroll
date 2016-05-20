//
//  InfoListViewModel.h
//  MyProject
//
//  Created by 时俊川 on 16/2/26.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InfoListNetManager.h"
#import "NSObject+ViewModel.h"
@interface InfoListViewModel : NSObject
- (instancetype)initWithType:(NewsType)type;

@property (nonatomic) NewsType type;
@property (nonatomic) NSInteger page;

//存列表
@property (nonatomic) NSMutableArray *dataList;

//存头部滚动列表
@property (nonatomic) NSArray *topList;
//行数
@property (nonatomic) NSInteger rowNumber;
//头部滚动数量
@property (nonatomic) NSInteger topNumber;
@property (nonatomic,getter=isHasTop) BOOL hasTop;

/****** 头部 ********/


/****** 列表 ********/
- (NSURL *)iconURLForRow:(NSInteger)row;
- (NSString *)titleForRow:(NSInteger)row;
- (NSString *)addTimeForRow:(NSInteger)row;
- (NSString *)clickNumForRow:(NSInteger)row;
- (NSString *)IDForRow:(NSInteger)row;

- (BOOL)normalStyleForRow:(NSInteger)row;

- (NSArray<NSURL *> *)iconURLsForRow:(NSInteger)row;


- (NSURL *)detailURLForRow:(NSInteger)row;

@end
