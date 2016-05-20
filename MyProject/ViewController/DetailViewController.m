//
//  DetailViewController.m
//  MyProject
//
//  Created by 时俊川 on 16/2/27.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import "DetailViewController.h"
#import "DetailModel.h"
#import "DetailViewModel.h"
@interface DetailViewController ()
@property (nonatomic) DetailViewModel *detailVM;
@property (nonatomic) NSString *message;
@end

@implementation DetailViewController
#pragma mark - UIWebView Delegate
- (void)webViewDidStartLoad:(UIWebView *)webView{
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"err %@", error);
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}
#pragma mark - 懒加载  Lazy Load
- (UIWebView *)webView{
    if (!_webView) {
        _webView = [UIWebView new];
        [self.view addSubview:_webView];
        _webView.delegate = self;
        [_webView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(0);
        }];
    }
    return _webView;
}

#pragma mark - 生命周期 life circle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.webView loadRequest:[NSURLRequest requestWithURL:_webURL]];
    
    [self.webView loadHTMLString:_message baseURL:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithMessage:(NSInteger)row{
    if (self = [super init]) {
        _message = [self.detailVM detailMessage:row];
    }
    return self;
}


- (DetailViewModel *)detailVM {
    if(_detailVM == nil) {
        _detailVM = [[DetailViewModel alloc] init];
    }
    return _detailVM;
}



- (NSString *)message {
    if(_message == nil) {
        _message = [[NSString alloc] init];
    }
    return _message;
}

@end
