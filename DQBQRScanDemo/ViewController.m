//
//  ViewController.m
//  DQBQRScanDemo
//
//  Created by DQB on 16/1/22.
//  Copyright © 2016年 DQB. All rights reserved.
//

#import "ViewController.h"
#import "DQBQRScanViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"二维码扫描";
    self.view.backgroundColor = [UIColor redColor];
    
    [self uiconfig];
}

- (void)uiconfig
{
    UIButton *scanBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    scanBtn.frame = CGRectMake(100, 200, 100, 44);
    [scanBtn setTitle:@"开始扫描" forState:UIControlStateNormal];
    [scanBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [scanBtn addTarget:self action:@selector(scanBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:scanBtn];
}

- (void)scanBtnClicked
{
    DQBQRScanViewController *vc = [[DQBQRScanViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
