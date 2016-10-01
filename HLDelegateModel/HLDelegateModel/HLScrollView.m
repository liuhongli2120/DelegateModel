//
//  HLScrollView.m
//  HLDelegateModel
//
//  Created by 刘宏立 on 16/10/1.
//  Copyright © 2016年 lhl. All rights reserved.
//

#import "HLScrollView.h"

@implementation HLScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)缩小视图 {
    
}

- (void)setupUI {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    
    btn.center = self.center;
    
    [self addSubview:btn];
    
    [btn addTarget:self action:@selector(缩小视图) forControlEvents:UIControlEventTouchUpInside];
}
@end
