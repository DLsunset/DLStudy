//
//  UILabel+DLAddition.m
//
//
//  Created by 董雷 on 16/4/21.
//  Copyright © 2016年 董雷. All rights reserved.
//

#import "UILabel+DLAddition.h"

@implementation UILabel (DLAddition)

+ (instancetype)DL_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color {
    UILabel *label = [[self alloc] init];
    
    label.text = text;
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = color;
    label.numberOfLines = 0;
    
    return label;
}


/**
 快速创建label

 @param text label内容
 @param fontSize 字体大小
 @param color 字体颜色
 @param type 字体类型，1代表细字体，0代表系统原生字体
 @return 返回label
 */
+ (instancetype)DL_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color withFontType:(NSInteger)type{
    UILabel *label = [[self alloc] init];
    
    label.text = text;
//    label.font = type == 1 ? [UIFont fontWithName:ThemeFontName size:fontSize] : [UIFont fontWithThemeFontWithSize:fontSize];
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = color;
    label.numberOfLines = 0;
    
    return label;
}

- (void) textLeftTopAlign
{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
    
    NSDictionary *attributes = @{NSFontAttributeName:[UIFont fontWithName:ThemeFontName size:RealValue(16)], NSParagraphStyleAttributeName:paragraphStyle.copy};
    
    CGSize labelSize = [self.text boundingRectWithSize:CGSizeMake(207, 999) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
    
    CGRect dateFrame =CGRectMake(2, 140, CGRectGetWidth(self.frame)-5, labelSize.height);
    self.frame = dateFrame;
}


/**
 高度不确定的label，会根据内容的多少来自动设置高度，前提是：在进行布局时不要设置高度方面的约束，只设置上左右，或者上左宽。

 @param fontsize 字体大小
 @return label控件
 */
+ (instancetype)DL_UncertaintyLabelWithFontSize:(CGFloat)fontsize{
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont systemFontOfSize:fontsize];
    label.lineBreakMode = NSLineBreakByWordWrapping;
    label.numberOfLines = 0;
    [label sizeToFit];
    return label;
}

//改变label字间距
- (void)changeWordSpaceForLabel:(UILabel *)label WithSpace:(float)space {
    
    NSString *labelText = label.text;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText attributes:@{NSKernAttributeName:@(space)}];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    label.attributedText = attributedString;
    [label sizeToFit];
}

@end
