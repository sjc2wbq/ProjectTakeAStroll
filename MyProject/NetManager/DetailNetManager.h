//
//  DetailNetManager.h
//  MyProject
//
//  Created by 时俊川 on 16/3/1.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailModel.h"
#import "NSObject+AFNetworking.h"
@interface DetailNetManager : NSObject
+ (id)getDetailModelWithID:(NSString *)ID completionHandle:kCompetionHandleBlock;

@end
