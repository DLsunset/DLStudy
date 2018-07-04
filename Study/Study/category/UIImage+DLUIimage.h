//
//  UIImage+DLUIimage.h
//  MusicDemo
//
//  Created by DongL on 2017/4/13.
//  Copyright © 2017年 DongL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (DLUIimage)

+ (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *)imageWithFileName:(NSString *)name type:(NSString *)type;

- (UIImage*)DL_imageByScalingAndCroppingForSize:(CGSize)targetSize;
@end
