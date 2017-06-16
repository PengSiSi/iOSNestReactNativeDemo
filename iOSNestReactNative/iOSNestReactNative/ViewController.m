//
//  ViewController.m
//  iOSNestReactNative
//
//  Created by 思 彭 on 2017/6/16.
//  Copyright © 2017年 思 彭. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *button;
- (IBAction)didClickButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)didClickButton:(id)sender {
    
    NextViewController *nextVc = [[NextViewController alloc]init];
    [self.navigationController pushViewController:nextVc animated:YES];

}
@end
