//
//  NormalCell.h
//  MyProject
//
//  Created by 时俊川 on 16/2/27.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NormalCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *iconIV;
@property (weak, nonatomic) IBOutlet UILabel *titleLb;
@property (weak, nonatomic) IBOutlet UILabel *timeLb;
@property (weak, nonatomic) IBOutlet UILabel *clickNumLb;

@end
