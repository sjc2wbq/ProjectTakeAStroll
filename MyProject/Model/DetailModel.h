//
//  DetailModel.h
//  MyProject
//
//  Created by 时俊川 on 16/2/29.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DetailDataModel,DetailAdModel,ModelShare_UrlDetail,DetailCmd_ListModel;
@interface DetailModel : NSObject

@property (nonatomic, assign) NSInteger status;

@property (nonatomic, strong) DetailDataModel *data;

@property (nonatomic, copy) NSString *info;

@end
@interface DetailDataModel : NSObject

@property (nonatomic, copy) NSString *weibo_text;

@property (nonatomic, copy) NSString *click_num;

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *is_commend;

@property (nonatomic, copy) NSString *is_comment;

@property (nonatomic, copy) NSString *sell_num;

@property (nonatomic, assign) BOOL share_photo;

@property (nonatomic, strong) NSArray<DetailCmd_ListModel *> *cmd_list;

@property (nonatomic, copy) NSString *cmt_total;

@property (nonatomic, copy) NSString *is_multi;

@property (nonatomic, assign) BOOL is_favs;

@property (nonatomic, copy) NSString *company_id;

@property (nonatomic, assign) NSInteger bounty_tips;

@property (nonatomic, copy) NSString *photo;

@property (nonatomic, strong) DetailAdModel *ad;

@property (nonatomic, copy) NSString *load_num;

@property (nonatomic, copy) NSString *add_time;

@property (nonatomic, copy) NSString *intro;

@property (nonatomic, copy) NSString *weiq_id;

@property (nonatomic, copy) NSString *wap_link;

@property (nonatomic, assign) NSInteger sell_type;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *cmt_open;

@property (nonatomic, copy) NSString *link;

@property (nonatomic, assign) NSInteger is_bounty;

@property (nonatomic, copy) NSString *price;

@property (nonatomic, copy) NSString *product_type;

@property (nonatomic, copy) NSString *keyword;

@property (nonatomic, copy) NSString *cpc_money_one;

@property (nonatomic, copy) NSString *open_type;

@property (nonatomic, copy) NSString *task_id;

@property (nonatomic, copy) NSString *task_order_id;

@property (nonatomic) NSString *ne_introduc;

@property (nonatomic, copy) NSString *pay_type;

@property (nonatomic, assign) NSInteger share_num;

@property (nonatomic, strong) ModelShare_UrlDetail *share_url;

@property (nonatomic, assign) NSInteger is_buy;

@property (nonatomic, copy) NSString *main_photo;

@property (nonatomic, copy) NSString *total_gain;

@property (nonatomic, copy) NSString *is_hot;

@end

@interface DetailAdModel : NSObject

@property (nonatomic, copy) NSString *ad_attri;

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *image;

@property (nonatomic, copy) NSString *links;

@property (nonatomic, copy) NSString *image_size;

@property (nonatomic, copy) NSString *type;

@property (nonatomic, copy) NSString *show_type;

@property (nonatomic, copy) NSString *show_num;

@end

@interface ModelShare_UrlDetail : NSObject

//@property (nonatomic, copy) NSString *3;
//
//@property (nonatomic, copy) NSString *1;
//
//@property (nonatomic, copy) NSString *4;
//
//@property (nonatomic, copy) NSString *2;

@end

@interface DetailCmd_ListModel : NSObject

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *add_time;

@property (nonatomic, copy) NSString *click_num;

@property (nonatomic, assign) NSInteger is_multi;

@property (nonatomic, copy) NSString *company_id;

@property (nonatomic, assign) NSInteger bounty_tips;

@property (nonatomic, copy) NSString *pay_type;

@property (nonatomic, assign) NSInteger share_num;

@property (nonatomic, copy) NSString *is_commend;

@property (nonatomic, copy) NSString *open_type;

@property (nonatomic, copy) NSString *main_photo;

@property (nonatomic, copy) NSString *product_type;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *is_hot;

@end

