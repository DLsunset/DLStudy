//
//  UIButton+DLAddition.h
//
//
//  Created by 董雷 on 16/5/17.
//  Copyright © 2016年 董雷. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (DLAddition)

/// 创建文本按钮
///
/// @param title         文本
/// @param fontSize      字体大小
/// @param normalColor   默认颜色
/// @param selectedColor 选中颜色
///
/// @return UIButton
+ (instancetype)DL_textButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor;

+ (instancetype)DL_textButton:(NSString *)title fontsize:(CGFloat)fontSize titleColorForNormal:(UIColor *)titleColor;

/**
 可设置字体的类方法，type为0代表原生字体，1代表细字体

 @param title title
 @param fontSize 字体大小
 @param titleColor 字体颜色
 @param type 字体类型
 @return 返回button
 */
+ (instancetype)DL_textButton:(NSString *)title fontsize:(CGFloat)fontSize titleColorForNormal:(UIColor *)titleColor WithFonttype:(NSInteger)type;

@end
