//
//  ViewController.m
//  HLDelegateModel
//
//  Created by 刘宏立 on 16/10/1.
//  Copyright © 2016年 lhl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

#pragma mark - 搭建界面
- (void)setupUI {
    UIScrollView *sv = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 300, 500)];
    sv.backgroundColor = [UIColor lightGrayColor];
    
    sv.center = self.view.center;
    
    [self.view addSubview:sv];
    
    UIImage *image = [UIImage imageNamed:@"020"];
    
    UIImageView *iv = [[UIImageView alloc]initWithFrame:sv.bounds];
    iv.image = image;
    
    [sv insertSubview:iv atIndex:0];
}

@end
