//
//  UIView+DLAddition.m
//
//
//  Created by 董雷 on 16/5/11.
//  Copyright © 2016年 董雷. All rights reserved.
//

#import "UIView+DLAddition.h"

@implementation UIView (DLAddition)

- (UIImage *)DL_snapshotImage {

    UIGraphicsBeginImageContextWithOptions(self.bounds.size, YES, 0);
    
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
    
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return result;
}

@end
