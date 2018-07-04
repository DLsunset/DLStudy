//
//  NSObject+DLAddition.m
//  
//
//  Created by 董雷 on 16/4/26.
//  Copyright © 2016年 董雷. All rights reserved.
//

#import "NSObject+DLAddition.h"

@implementation NSObject (DLAddition)

/// 使用字典创建模型对象
///
/// @param dict 字典
///
/// @return 模型对象
+ (instancetype)DL_objectWithDict:(NSDictionary *)dict {
    id obj = [[self alloc] init];
    
    [obj setValuesForKeysWithDictionary:dict];
    
    return obj;
}

@end
