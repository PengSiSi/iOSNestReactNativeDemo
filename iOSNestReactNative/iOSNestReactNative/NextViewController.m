//
//  NextViewController.m
//  iOSNestReactNative
//
//  Created by 思 彭 on 2017/6/16.
//  Copyright © 2017年 思 彭. All rights reserved.
//

#import "NextViewController.h"
// #import "RCTRootView.h"，更新之后，需要导入下面的头文件。
// 官网的评论下方也有说明，否则会提示RCTRootView.h文件不存在。
#import <React/RCTRootView.h>

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor grayColor];
//    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
//    view1.backgroundColor = [UIColor redColor];
//    [self.view addSubview:view1];
    
    NSURL *jsCodeLocation = [NSURL
                             URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios"];
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : @"RNHighScores"
                         initialProperties :
     @{
       @"NameDict" : @[
               @{
                   @"name" : @"思思",
                   @"value": @"棒棒哒"
                   },
               @{
                   @"name" : @"思思sisi",
                   @"value": @"嘻嘻"
                   }
               ]
       }
                          launchOptions    : nil];
    self.view = rootView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
