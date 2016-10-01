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

- (void)放大视图 {
    //要知道缩小的对象(谁),就需要一个代理,代理步骤:6步
    /*
     1.此时需要定义一个代理属性
     2.定义一个协议
     3.定义一个方法,这个方法就是找到要缩小的对象(谁)
     4.设置代理,就是要通过这个代理告诉要通知的对象,让这个对象将缩小的图片传给scrollView
     5.遵守协议,只有遵守协议才能使用协议定义好的方法,这个方法就是"要缩放的对象"
     6.实现方法,就是设置要传递的图片,只有实现方法,才知道要传递的图片是谁
     */
    UIView *v = [_delegate 要放大的视图];
    
    CGFloat scale = 1.05;
    
    v.transform = CGAffineTransformScale(v.transform, scale, scale);
}

- (void)setupUI {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    
    btn.center = self.center;
    
    [self addSubview:btn];
    
    [btn addTarget:self action:@selector(放大视图) forControlEvents:UIControlEventTouchUpInside];
}
@end
