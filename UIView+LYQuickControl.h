//
//  UIView+LYQuickControl.h
//  BlockUseDemo
//
//  Created by quiet on 15/7/15.
//  Copyright (c) 2015年 quiet. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LYButton.h"

@interface UIView (ZTQuickControl)
//创建系统按钮
-(UIButton *)addSystemButtonWithFrame:(CGRect)frame
                           title:(NSString *)titile
                          action:(void(^)(LYButton *button))action;

+(UIButton *)systemButtonWithFrame:(CGRect)frame
                                title:(NSString *)titile
                               action:(void(^)(LYButton *button))action;

//创建图片按钮
-(UIButton *)addImageButtonWithFrame:(CGRect)frame
                           title:(NSString *)titile
                         image:(NSString *)image
                          action:(void(^)(LYButton *button))action;

//获取图片按钮(不直接添加到view)
+(UIButton *)imageButtonWithFrame:(CGRect)frame
                               title:(NSString *)titile
                               image:(NSString *)image
                              action:(void(^)(LYButton *button))action;


//创建label
-(UILabel *)addLabelWithFrame:(CGRect)frame
                        title:(NSString *)title;
//创建imageView
-(UIImageView *)addImageViewWithFrame:(CGRect)frame
                        image:(NSString *)image;
//创建textfiled
-(UITextField *)addTextFieldWithFrame:(CGRect)frame
                                style:(UITextBorderStyle)style
                             delegate:(id)delegate;
@end
