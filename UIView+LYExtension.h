//
//  UIView+LYExtension.h
//  BlockUseDemo
//
//  Created by quiet on 15/7/15.
//  Copyright (c) 2015年 quiet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LYExtension)
@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
-(void)setCornerRadius:(CGFloat)radius;
@end
