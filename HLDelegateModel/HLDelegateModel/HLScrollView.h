//
//  HLScrollView.h
//  HLDelegateModel
//
//  Created by 刘宏立 on 16/10/1.
//  Copyright © 2016年 lhl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HLScrollViewDelegate.h"

@interface HLScrollView : UIView

@property(nonatomic,weak)id<HLScrollViewDelegate> delegate;

@end
