//
//  UIColor+DLAddition.m
//
//
//  Created by 董雷 on 16/4/21.
//  Copyright © 2016年 董雷. All rights reserved.
//

#import "UIColor+DLAddition.h"

@implementation UIColor (DLAddition)

+ (instancetype)themeColor {
    return [self DL_colorWithHex:0x6c7ea2];
}

+ (instancetype)DL_colorWithHex:(uint32_t)hex {
    
    uint8_t r = (hex & 0xff0000) >> 16;
    uint8_t g = (hex & 0x00ff00) >> 8;
    uint8_t b = hex & 0x0000ff;
    
    return [self DL_colorWithRed:r green:g blue:b];
}

+ (instancetype)DL_colorWithHex:(uint32_t)hex withAlpha:(CGFloat)alpha{
    
    uint8_t r = (hex & 0xff0000) >> 16;
    uint8_t g = (hex & 0x00ff00) >> 8;
    uint8_t b = hex & 0x0000ff;
    
    return [self DL_colorWithRed:r green:g blue:b WithAlpha:alpha];
}

+ (instancetype)DL_randomColor {
    return [UIColor DL_colorWithRed:arc4random_uniform(256) green:arc4random_uniform(256) blue:arc4random_uniform(256)];
}

+ (instancetype)DL_colorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue {
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:1.0];
}

+ (instancetype)DL_colorForGaryWith:(uint8_t)gray {
    return [UIColor colorWithRed:gray / 255.0 green:gray / 255.0 blue:gray / 255.0 alpha:1.0];
}

+ (instancetype)DL_colorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue WithAlpha:(CGFloat)Alpha{
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:Alpha];
}

+ (NSArray<UIColor *> *)DL_getCaseStateArr {
    UIColor *color1 = [UIColor DL_colorWithHex:0x367af1];
    UIColor *color2 = [UIColor DL_colorWithHex:0x25b5b0];
    UIColor *color3 = [UIColor DL_colorWithHex:0x56c083];
    UIColor *color4 = [UIColor DL_colorWithHex:0xf97556];
    UIColor *color5 = [UIColor DL_colorWithHex:0xf4923d];
    UIColor *color6 = [UIColor DL_colorWithHex:0x2d8fe6];
    UIColor *color7 = [UIColor DL_colorWithHex:0x6ac9a9];
    UIColor *color8 = [UIColor DL_colorWithHex:0xf53444];
    UIColor *color9 = [UIColor DL_colorWithHex:0x62b2f6];
    UIColor *color10 = [UIColor DL_colorWithHex:0xfd9e2b];
    
    NSArray *arr = @[color1,color2,color3,color4,color5,color6,color7,color8,color9,color10];
    return arr;
}

+ (NSArray<UIColor *> *)DL_getColorArr {
    
    UIColor *color1 = [UIColor DL_colorWithRed:224 green:107 blue:107];
    UIColor *color2 = [UIColor DL_colorWithRed:133 green:210 blue:192];
    UIColor *color3 = [UIColor DL_colorWithRed:102 green:79 blue:104];
    UIColor *color4 = [UIColor DL_colorWithRed:242 green:207 blue:103];
    UIColor *color5 = [UIColor DL_colorWithRed:79 green:77 blue:191];
    UIColor *color6 = [UIColor DL_colorWithRed:153 green:102 blue:51];
    UIColor *color7 = [UIColor DL_colorWithRed:80 green:128 blue:255];
    UIColor *color8 = [UIColor DL_colorWithRed:255 green:128 blue:0];
    UIColor *color9 = [UIColor DL_colorWithRed:152 green:44 blue:65];
    UIColor *color10 = [UIColor DL_colorWithRed:101 green:167 blue:255];
    UIColor *color11 = [UIColor DL_colorWithRed:129 green:102 blue:255];
    UIColor *color12 = [UIColor DL_colorWithRed:60 green:57 blue:128];
    UIColor *color13 = [UIColor DL_colorWithRed:60 green:115 blue:70];
    UIColor *color14 = [UIColor DL_colorWithRed:135 green:72 blue:73];
    UIColor *color15 = [UIColor DL_colorWithHex:0xef5b9c];
    UIColor *color16 = [UIColor DL_colorWithHex:0x905a3d];
    UIColor *color17 = [UIColor DL_colorWithHex:0x817936];
    UIColor *color18 = [UIColor DL_colorWithHex:0x444693];
    UIColor *color19 = [UIColor DL_colorWithHex:0xf05b72];
    UIColor *color20 = [UIColor DL_colorWithHex:0x87481f];
    UIColor *color21 = [UIColor DL_colorWithHex:0x80752c];
    UIColor *color22 = [UIColor DL_colorWithHex:0x2a5caa];
    UIColor *color23 = [UIColor DL_colorWithHex:0xf58f98];
    UIColor *color24 = [UIColor DL_colorWithHex:0xf58220];
    UIColor *color25 = [UIColor DL_colorWithHex:0x4d4f36];
    UIColor *color26 = [UIColor DL_colorWithHex:0x224b8f];
    UIColor *color27 = [UIColor DL_colorWithHex:0xca8687];
    UIColor *color28 = [UIColor DL_colorWithHex:0x843900];
    UIColor *color29 = [UIColor DL_colorWithHex:0x5c7a29];
    UIColor *color30 = [UIColor DL_colorWithHex:0x003a6c];
    UIColor *color31 = [UIColor DL_colorWithHex:0xbd6758];
    UIColor *color32 = [UIColor DL_colorWithHex:0x905d1d];
    UIColor *color33 = [UIColor DL_colorWithHex:0x769149];
    UIColor *color34 = [UIColor DL_colorWithHex:0x102b6a];
    UIColor *color35 = [UIColor DL_colorWithHex:0xd64f44];
    UIColor *color36 = [UIColor DL_colorWithHex:0x8c531b];
    UIColor *color37 = [UIColor DL_colorWithHex:0x78a355];
    UIColor *color38 = [UIColor DL_colorWithHex:0x46485f];
    UIColor *color39 = [UIColor DL_colorWithHex:0xd93a49];
    UIColor *color40 = [UIColor DL_colorWithHex:0x826858];
    UIColor *color41 = [UIColor DL_colorWithHex:0x74905d];
    UIColor *color42 = [UIColor DL_colorWithHex:0x494e8f];
    UIColor *color43 = [UIColor DL_colorWithHex:0x987165];
    UIColor *color44 = [UIColor DL_colorWithHex:0xae6642];
    UIColor *color45 = [UIColor DL_colorWithHex:0x007d65];
    UIColor *color46 = [UIColor DL_colorWithHex:0x6950a1];
    UIColor *color47 = [UIColor DL_colorWithHex:0xaa363d];
    UIColor *color48 = [UIColor DL_colorWithHex:0x845538];
    UIColor *color49 = [UIColor DL_colorWithHex:0x367459];
    UIColor *color50 = [UIColor DL_colorWithHex:0x594c6d];

    NSArray *arr = @[color1,color2,color3,color4,color5,color6,color7,color8,color9,color10,color11,color12,color13,color14,color15,color16,color17,color18,color19,color20,color21,color22,color23,color24,color25,color26,color27,color28,color29,color30,color31,color32,color33,color34,color35,color36,color37,color38,color39,color40,color41,color42,color43,color44,color45,color46,color47,color48,color49,color50];
    return arr;
}

+ (NSArray<UIColor *> *)DL_getLightColorArr {
    
    UIColor *color1 = [UIColor DL_colorWithRed:224 green:107 blue:107 WithAlpha:.5];
    UIColor *color2 = [UIColor DL_colorWithRed:102 green:79 blue:104 WithAlpha:.5];
    UIColor *color3 = [UIColor DL_colorWithRed:133 green:210 blue:192 WithAlpha:.5];
    UIColor *color4 = [UIColor DL_colorWithRed:242 green:207 blue:103 WithAlpha:.5];
    UIColor *color5 = [UIColor DL_colorWithRed:79 green:77 blue:191 WithAlpha:.5];
    UIColor *color6 = [UIColor DL_colorWithRed:153 green:102 blue:51 WithAlpha:.5];
    UIColor *color7 = [UIColor DL_colorWithRed:80 green:128 blue:255 WithAlpha:.5];
    UIColor *color8 = [UIColor DL_colorWithRed:255 green:128 blue:0 WithAlpha:.5];
    UIColor *color9 = [UIColor DL_colorWithRed:152 green:44 blue:65 WithAlpha:.5];
    UIColor *color10 = [UIColor DL_colorWithRed:101 green:167 blue:255 WithAlpha:.5];
    UIColor *color11 = [UIColor DL_colorWithRed:129 green:102 blue:255 WithAlpha:.5];
    UIColor *color12 = [UIColor DL_colorWithRed:60 green:57 blue:128 WithAlpha:.5];
    UIColor *color13 = [UIColor DL_colorWithRed:60 green:115 blue:70 WithAlpha:.5];
    UIColor *color14 = [UIColor DL_colorWithRed:135 green:72 blue:73 WithAlpha:.5];
    UIColor *color15 = [UIColor DL_colorWithHex:0xef5b9c withAlpha:.5];
    UIColor *color16 = [UIColor DL_colorWithHex:0x905a3d withAlpha:.5];
    UIColor *color17 = [UIColor DL_colorWithHex:0x817936 withAlpha:.5];
    UIColor *color18 = [UIColor DL_colorWithHex:0x444693 withAlpha:.5];
    UIColor *color19 = [UIColor DL_colorWithHex:0xf05b72 withAlpha:.5];
    UIColor *color20 = [UIColor DL_colorWithHex:0x87481f withAlpha:.5];
    UIColor *color21 = [UIColor DL_colorWithHex:0x80752c withAlpha:.5];
    UIColor *color22 = [UIColor DL_colorWithHex:0x2a5caa withAlpha:.5];
    UIColor *color23 = [UIColor DL_colorWithHex:0xf58f98 withAlpha:.5];
    UIColor *color24 = [UIColor DL_colorWithHex:0xf58220 withAlpha:.5];
    UIColor *color25 = [UIColor DL_colorWithHex:0x4d4f36 withAlpha:.5];
    UIColor *color26 = [UIColor DL_colorWithHex:0x224b8f withAlpha:.5];
    UIColor *color27 = [UIColor DL_colorWithHex:0xca8687 withAlpha:.5];
    UIColor *color28 = [UIColor DL_colorWithHex:0x843900 withAlpha:.5];
    UIColor *color29 = [UIColor DL_colorWithHex:0x5c7a29 withAlpha:.5];
    UIColor *color30 = [UIColor DL_colorWithHex:0x003a6c withAlpha:.5];
    UIColor *color31 = [UIColor DL_colorWithHex:0xbd6758 withAlpha:.5];
    UIColor *color32 = [UIColor DL_colorWithHex:0x905d1d withAlpha:.5];
    UIColor *color33 = [UIColor DL_colorWithHex:0x769149 withAlpha:.5];
    UIColor *color34 = [UIColor DL_colorWithHex:0x102b6a withAlpha:.5];
    UIColor *color35 = [UIColor DL_colorWithHex:0xd64f44 withAlpha:.5];
    UIColor *color36 = [UIColor DL_colorWithHex:0x8c531b withAlpha:.5];
    UIColor *color37 = [UIColor DL_colorWithHex:0x78a355 withAlpha:.5];
    UIColor *color38 = [UIColor DL_colorWithHex:0x46485f withAlpha:.5];
    UIColor *color39 = [UIColor DL_colorWithHex:0xd93a49 withAlpha:.5];
    UIColor *color40 = [UIColor DL_colorWithHex:0x826858 withAlpha:.5];
    UIColor *color41 = [UIColor DL_colorWithHex:0x74905d withAlpha:.5];
    UIColor *color42 = [UIColor DL_colorWithHex:0x494e8f withAlpha:.5];
    UIColor *color43 = [UIColor DL_colorWithHex:0x987165 withAlpha:.5];
    UIColor *color44 = [UIColor DL_colorWithHex:0xae6642 withAlpha:.5];
    UIColor *color45 = [UIColor DL_colorWithHex:0x007d65 withAlpha:.5];
    UIColor *color46 = [UIColor DL_colorWithHex:0x6950a1 withAlpha:.5];
    UIColor *color47 = [UIColor DL_colorWithHex:0xaa363d withAlpha:.5];
    UIColor *color48 = [UIColor DL_colorWithHex:0x845538 withAlpha:.5];
    UIColor *color49 = [UIColor DL_colorWithHex:0x367459 withAlpha:.5];
    UIColor *color50 = [UIColor DL_colorWithHex:0x594c6d withAlpha:.5];
    
        NSArray *arr = @[color1,color2,color3,color4,color5,color6,color7,color8,color9,color10,color11,color12,color13,color14,color15,color16,color17,color18,color19,color20,color21,color22,color23,color24,color25,color26,color27,color28,color29,color30,color31,color32,color33,color34,color35,color36,color37,color38,color39,color40,color41,color42,color43,color44,color45,color46,color47,color48,color49,color50];
    return arr;
}

@end
