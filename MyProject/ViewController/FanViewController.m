//
//  FanViewController.m
//  MyProject
//
//  Created by 时俊川 on 16/2/27.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import "FanViewController.h"
#import "DetailViewController.h"
#import "NormalCell.h"
#import "ImagesCell.h"

@interface FanViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) InfoListViewModel *FanVM;
@property (nonatomic) DetailViewModel *DetaiVM;
@end

@implementation FanViewController

#pragma mark - UITableView Delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSLog(@"ID:%@",[self.FanVM IDForRow:indexPath.row]);
    [self.DetaiVM getDetailDataWithID:[self.FanVM IDForRow:indexPath.row]  completionHanle:^(NSError *error) {
        NSLog(@"******");
        if (!error) {
            NSLog(@"wawawa");
        }
        //        completionHandle(error);
    }];
    DetailViewController *vc = [[DetailViewController alloc] initWithMessage:indexPath.row];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.FanVM.rowNumber;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger row = indexPath.row;
    if ([self.FanVM normalStyleForRow:row]) {
        NormalCell *cell = [tableView dequeueReusableCellWithIdentifier:@"normalCell"];
        [cell.iconIV setImageWithURL:[self.FanVM iconURLForRow:row]];
        cell.titleLb.text = [self.FanVM titleForRow:row];
        cell.titleLb.numberOfLines = 0;
        cell.timeLb.text = [self.FanVM addTimeForRow:row];
        cell.clickNumLb.text = [self.FanVM clickNumForRow:row];
        return cell;
    }else{
        ImagesCell *cell = [tableView dequeueReusableCellWithIdentifier:@"imagesCell"];
        cell.titleLb.text = [self.FanVM titleForRow:row];
        cell.tiemLb.text = [self.FanVM addTimeForRow:row];
        cell.clickNumLb.text = [self.FanVM clickNumForRow:row];
        NSArray *tmpArr = [self.FanVM iconURLsForRow:row];
        for (int i = 0; i < tmpArr.count; i++) {
            if (cell.iconIV.count > i) {
                UIImageView *iv = cell.iconIV[i];
                [iv setImageWithURL:tmpArr[i]];
            }
        }
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if ([self.FanVM normalStyleForRow:indexPath.row]) {
        return 81;
    }else{
        return 118;
    }
}
//cell的分割线要顶格
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    cell.separatorInset = UIEdgeInsetsZero;
    cell.layoutMargins = UIEdgeInsetsZero;
    cell.preservesSuperviewLayoutMargins = NO;
}

#pragma mark - 生命周期 life circle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_tableView addHeaderRefresh:^{
        [self.FanVM getDataWithRequestMode:RequestModeRefresh completionHanle:^(NSError *error) {
            if (!error) {
                [_tableView reloadData];
            }
            [_tableView endHeaderRefresh];
        }];
    }];
    [_tableView addAutoFooterRefresh:^{
        [self.FanVM getDataWithRequestMode:RequestModeMore completionHanle:^(NSError *error) {
            if (!error) {
                [_tableView reloadData];
            }
            [_tableView endFooterRefresh];
        }];
    }];
    [_tableView beginHeaderRefresh];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 懒加载 Lazy Load

- (InfoListViewModel *)FanVM {
    if(_FanVM == nil) {
        _FanVM = [[InfoListViewModel alloc] initWithType:self.type];
    }
    return _FanVM;
}

- (DetailViewModel *)DetaiVM {
    if(_DetaiVM == nil) {
        _DetaiVM = [DetailViewModel new];
    }
    return _DetaiVM;
}

@end
