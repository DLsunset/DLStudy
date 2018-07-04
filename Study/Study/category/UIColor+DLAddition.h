//
//  UIColor+DLAddition.h
//
//
//  Created by 董雷 on 16/4/21.
//  Copyright © 2016年 董雷. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (DLAddition)

//主题颜色
+ (instancetype)themeColor;
/// 使用 16 进制数字创建颜色，例如 0xFF0000 创建红色
///
/// @param hex 16 进制无符号32位整数
///
/// @return 颜色
+ (instancetype)DL_colorWithHex:(uint32_t)hex;

/// 生成随机颜色
///
/// @return 随机颜色
+ (instancetype)DL_randomColor;

/// 使用 R / G / B 数值创建颜色
///
/// @param red   red
/// @param green green
/// @param blue  blue
///
/// @return 颜色
+ (instancetype)DL_colorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue;

+ (instancetype)DL_colorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue WithAlpha:(CGFloat)Alpha;

+ (instancetype)DL_colorWithHex:(uint32_t)hex withAlpha:(CGFloat)alpha;

+ (instancetype)DL_colorForGaryWith:(uint8_t)gray;

+ (NSArray<UIColor *> *)DL_getCaseStateArr;
+ (NSArray<UIColor *> *)DL_getColorArr;
+ (NSArray<UIColor *> *)DL_getLightColorArr;
@end
