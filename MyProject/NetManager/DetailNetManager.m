//
//  DetailNetManager.m
//  MyProject
//
//  Created by 时俊川 on 16/3/1.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import "DetailNetManager.h"
#define kDetailPath @"http://woliuda.com/Api/Detail?0.042223431868478656&id=%@&token=9lYXOoPsxImt2QeL4VrhcfACeHnTegNfVeBoHAgqGfc"
@implementation DetailNetManager
+ (id)getDetailModelWithID:(NSString *)ID completionHandle:(void (^)(id, NSError *))completionHandle{
    NSString *path = [NSString stringWithFormat:kDetailPath,ID];
    return [self GET:path parameters:nil progress:nil completionHandle:^(id responseObj, NSError *error) {
        completionHandle([DetailModel parse:responseObj],error);
        NSLog(@"");

    }];
}
@end
