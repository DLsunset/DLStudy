//
//  UIButton+DLAddition.m
//
//
//  Created by 董雷 on 16/5/17.
//  Copyright © 2016年 董雷. All rights reserved.
//

#import "UIButton+DLAddition.h"

@implementation UIButton (DLAddition)

+ (instancetype)DL_textButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor {
    
    UIButton *button = [[self alloc] init];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setTitleColor:normalColor forState:UIControlStateNormal];
    [button setTitleColor:selectedColor forState:UIControlStateSelected];
    
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    [button sizeToFit];
    
    return button;
}

+ (instancetype)DL_textButton:(NSString *)title fontsize:(CGFloat)fontSize titleColorForNormal:(UIColor *)titleColor {
    
    UIButton *button = [[self alloc] init];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    [button sizeToFit];
    
    return button;
}

+ (instancetype)DL_textButton:(NSString *)title fontsize:(CGFloat)fontSize titleColorForNormal:(UIColor *)titleColor WithFonttype:(NSInteger)type{
    
    UIButton *button = [[self alloc] init];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    
//    button.titleLabel.font = type == 1 ? [UIFont fontWithName:THEME_FONTNAME size:fontSize] : [UIFont systemFontOfSize:fontSize];
    
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    [button sizeToFit];
    
    return button;
}

@end
