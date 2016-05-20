//
//  ImagesCell.h
//  MyProject
//
//  Created by 时俊川 on 16/2/27.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImagesCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLb;
@property (weak, nonatomic) IBOutlet UILabel *tiemLb;
@property (weak, nonatomic) IBOutlet UILabel *clickNumLb;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *iconIV;

@end
