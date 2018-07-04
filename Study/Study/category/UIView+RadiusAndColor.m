//
//  UIView+RadiusAndColor.m
//  Iget
//
//  Created by Jokin on 2017/3/17.
//  Copyright © 2017年 董雷. All rights reserved.
//

#import "UIView+RadiusAndColor.h"

@implementation UIView (RadiusAndColor)
- (instancetype)WZ_makeViewWithRadus:(CGFloat)radusNum Borderolor:(UIColor *)color BorderWidth:(CGFloat)width {
    if (width <= 0) {
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = radusNum;
        
    }else if (radusNum <= 0){
        self.layer.masksToBounds = YES;
        self.layer.borderWidth = width;
        self.layer.borderColor = color.CGColor;
    }else if (radusNum > 0 && width > 0) {
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = radusNum;
        self.layer.borderWidth = width;
        self.layer.borderColor = color.CGColor;

    }
    return self;
}




@end
