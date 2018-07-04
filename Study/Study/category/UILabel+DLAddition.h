//
//  UILabel+DLAddition.h
//
//
//  Created by 董雷 on 16/4/21.
//  Copyright © 2016年 董雷. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (DLAddition)

/// 创建文本标签
///
/// @param text     文本
/// @param fontSize 字体大小
/// @param color    颜色
///
/// @return UILabel
+ (instancetype)DL_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color;

/**
 快速创建label,type是字体类型，1代表细字体，0代表系统原生字体
 
 @param text label内容
 @param fontSize 字体大小
 @param color 字体颜色
 @param type 字体类型，1代表细字体，0代表系统原生字体
 @return 返回label
 */
+ (instancetype)DL_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color withFontType:(NSInteger)type;
/**
 高度不确定的label，会根据内容的多少来自动设置高度，前提是：在进行布局时不要设置高度方面的约束，只设置上左右，或者上左宽。
 
 @param fontsize 字体大小
 @return label控件
 */
+ (instancetype)DL_UncertaintyLabelWithFontSize:(CGFloat)fontsize;


/**
 改变label的字间距

 @param label 需要改变间距的label
 @param space 间距大小
 */
- (void)changeWordSpaceForLabel:(UILabel *)label WithSpace:(float)space;
@end
