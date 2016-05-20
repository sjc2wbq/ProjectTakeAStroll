//
//  InfoListModel.h
//  MyProject
//
//  Created by 时俊川 on 16/2/26.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@class InfoListDataModel,InfoListListModel;
@interface InfoListModel : NSObject

@property (nonatomic, assign) NSInteger status;

@property (nonatomic, strong) InfoListDataModel *data;

@property (nonatomic, copy) NSString *info;

@end
@interface InfoListDataModel : NSObject

@property (nonatomic, assign) NSInteger page_num;

@property (nonatomic, assign) NSInteger p;

@property (nonatomic, strong) NSArray<InfoListListModel *> *list;

@property (nonatomic, copy) NSString *total_num;

@property (nonatomic, assign) NSInteger request_time;

@property (nonatomic, strong) NSArray *ad;

@end

@interface InfoListListModel : NSObject

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *add_time;

@property (nonatomic, copy) NSString *click_num;

@property (nonatomic, copy) NSString *is_multi;

@property (nonatomic, copy) NSString *company_id;

@property (nonatomic, assign) NSInteger bounty_tips;

@property (nonatomic, copy) NSString *pay_type;

@property (nonatomic, copy) NSString *load_num;

@property (nonatomic, assign) NSInteger share_num;

@property (nonatomic, copy) NSString *is_commend;

@property (nonatomic, copy) NSString *open_type;

@property (nonatomic, copy) NSString *main_photo;

@property (nonatomic, copy) NSString *product_type;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *is_hot;

@end

