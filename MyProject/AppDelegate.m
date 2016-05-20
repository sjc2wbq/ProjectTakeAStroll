//
//  AppDelegate.m
//  MyProject
//
//  Created by 时俊川 on 16/2/23.
//  Copyright © 2016年 sunhao. All rights reserved.
//

#import "AppDelegate.h"
#import "InfoListNetManager.h"
#import <MLTransition.h>
#import "DetailModel.h"
#import "DetailNetManager.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    [DetailNetManager getDetailModelWithID:@"28143" completionHandle:^(id model, NSError *error) {
//        NSLog(@"wa");
//    }];
    
//    
//    [InfoListNetManager getInfoListWithRequestTime:@"0" page:1 completionHandle:^(id model, NSError *error) {
//        NSLog(@"wa");
//    }];
//    //解决自定义左上角按钮,导致右划手势返回无效
//    [MLTransition validatePanPackWithMLTransitionGestureRecognizerType:MLTransitionGestureRecognizerTypeScreenEdgePan];
//    
//    //检测当前网络状态--这是从官方文档复制的
//    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
//        NSLog(@"Reachability: %@", AFStringFromNetworkReachabilityStatus(status));
//        switch (status) {
//            case AFNetworkReachabilityStatusUnknown:
//            case AFNetworkReachabilityStatusNotReachable: {
//                self.OnLine = NO;
//                break;
//            }
//            case AFNetworkReachabilityStatusReachableViaWWAN:
//            case AFNetworkReachabilityStatusReachableViaWiFi: {
//                self.OnLine = YES;
//                break;
//            }
//        }
//    }];
//    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
