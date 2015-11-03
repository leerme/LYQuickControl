//
//  UIView+LYQuickControl.m
//  BlockUseDemo
//
//  Created by quiet on 15/7/15.
//  Copyright (c) 2015年 quiet. All rights reserved.
//

#import "UIView+LYQuickControl.h"

@implementation UIView (LYQuickControl)
-(UIButton *)addSystemButtonWithFrame:(CGRect)frame
                           title:(NSString *)titile
                          action:(void(^)(LYButton *button))action
{
    LYButton *button = [LYButton buttonWithType:UIButtonTypeSystem];
    button.frame = frame;
    [button setTitle:titile forState:UIControlStateNormal];
    button.action = action;
    [self addSubview:button];
    return button;
}
//创建图片按钮
-(UIButton *)addImageButtonWithFrame:(CGRect)frame
                               title:(NSString *)titile
                               image:(NSString *)image
                              action:(void(^)(LYButton *button))action
{
    LYButton *button = [LYButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setTitle:titile forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    button.action = action;
    [self addSubview:button];
    return button;
}
+(UIButton *)systemButtonWithFrame:(CGRect)frame
                             title:(NSString *)titile
                            action:(void(^)(LYButton *button))action
{
    LYButton *button = [LYButton buttonWithType:UIButtonTypeSystem];
    button.frame = frame;
    [button setTitle:titile forState:UIControlStateNormal];
    button.action = action;
    return button;
}

//获取图片按钮(不直接添加到view)
+(UIButton *)imageButtonWithFrame:(CGRect)frame
                            title:(NSString *)titile
                            image:(NSString *)image
                           action:(void(^)(LYButton *button))action
{
    LYButton *button = [LYButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setTitle:titile forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    button.action = action;
    return button;
}
//创建label
-(UILabel *)addLabelWithFrame:(CGRect)frame
                        title:(NSString *)title
{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = title;
    [self addSubview:label];
    return label;
}
//创建imageView
-(UIImageView *)addImageViewWithFrame:(CGRect)frame
                                image:(NSString *)image
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.image = [UIImage imageNamed:image];
    [self addSubview:imageView];
    return imageView;
}
//创建textfiled
-(UITextField *)addTextFieldWithFrame:(CGRect)frame
                                style:(UITextBorderStyle)style
                             delegate:(id)delegate
{
    UITextField *textField = [[UITextField alloc] initWithFrame:frame];
    textField.borderStyle = style;
    textField.delegate = delegate;
    [self addSubview:textField];
    return textField;
}

@end
