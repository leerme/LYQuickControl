//
//  LYButton.h
//  BlockUseDemo
//
//  Created by quiet on 15/7/15.
//  Copyright (c) 2015年 quiet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYButton : UIButton
//添加点击后执行的block
// void action(ZTButton *button);
@property (copy,nonatomic) void (^action)(LYButton *button);
@end
