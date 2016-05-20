//
//  DetailViewController.h
//  MyProject
//
//  Created by 时俊川 on 16/2/27.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController<UIWebViewDelegate>
@property (nonatomic) UIWebView *webView;
@property (nonatomic, readonly) NSURL *webURL;
- (NSString *)getMessage:(NSInteger)row;
- (NSString *)getID:(NSInteger)row;
- (instancetype)initWithMessage:(NSInteger)row;
@end
