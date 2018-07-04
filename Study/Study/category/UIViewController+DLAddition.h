//
//  UIViewController+DLAddition.h
//
//
//  Created by 董雷 on 16/5/18.
//  Copyright © 2016年 董雷. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (DLAddition)

/**
 * 在当前视图控制器中添加子控制器，将子控制器的视图添加到 view 中
 *
 * @param childController 要添加的子控制器
 * @param view            要添加到的视图
 */
- (void)DL_addChildController:(UIViewController *)childController intoView:(UIView *)view;


/**
 解除与父控制器的父子关系，并将view从父控制器的view上移除
 */
- (void)DL_removeFromParentViewController;
@end
