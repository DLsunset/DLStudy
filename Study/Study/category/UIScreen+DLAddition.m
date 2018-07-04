//
//  UIScreen+DLAddition.m
//
//
//  Created by 董雷 on 16/5/17.
//  Copyright © 2016年 董雷. All rights reserved.
//

#import "UIScreen+DLAddition.h"

@implementation UIScreen (DLAddition)

+ (CGFloat)DL_screenWidth {
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat)DL_screenHeight {
    return [UIScreen mainScreen].bounds.size.height;
}

+ (CGFloat)DL_scale {
    return [UIScreen mainScreen].scale;
}

@end
