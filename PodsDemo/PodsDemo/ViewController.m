//
//  ViewController.m
//  PodsDemo
//
//  Created by 周文杰 on 2017/2/17.
//  Copyright © 2017年 zwj. All rights reserved.
//

#import "ViewController.h"

#import "RootViewController.h"

@interface ViewController ()
- (IBAction)onClickMap:(id)sender;
- (IBAction)onClickCharts:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame = CGRectMake(50, 150 , 200 , 50);
    [btn1 setTitle:@"BaiduMap" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(onClickMap:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onClickMap:(id)sender {
    
    RootViewController *vc = [[RootViewController alloc] init];
    [self.navigationController pushViewController:vc animated:true];
    
}

- (IBAction)onClickCharts:(id)sender {
    
    
}
@end
