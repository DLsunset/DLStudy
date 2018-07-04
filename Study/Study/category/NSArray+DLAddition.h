//
//  NSArray+DLAddition.h
//  
//
//  Created by 董雷 on 16/4/26.
//  Copyright © 2016年 董雷. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (DLAddition)

/// 从 plist 文件创建指定 clsName 对象数组
///
/// @param plistName plist 文件名
/// @param clsName   要创建模型的类名
///
/// @return clsName 的对象数组
+ (NSArray *)DL_objectListWithPlistName:(NSString *)plistName clsName:(NSString *)clsName;

- (NSArray *)arrayByReplacingNullsWithBlanks;

@end
