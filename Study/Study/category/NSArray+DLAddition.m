//
//  NSArray+DLAddition.m
//
//
//  Created by 董雷 on 16/4/26.
//  Copyright © 2016年 董雷. All rights reserved.
//

#import "NSArray+DLAddition.h"
#import "NSObject+DLAddition.h"
#import "NSDictionary+DLNull.h"

@implementation NSArray (DLAddition)

+ (NSArray *)DL_objectListWithPlistName:(NSString *)plistName clsName:(NSString *)clsName {
    NSURL *url = [[NSBundle mainBundle] URLForResource:plistName withExtension:nil];
    NSArray *list = [NSArray arrayWithContentsOfURL:url];
    
    NSMutableArray *arrayM = [NSMutableArray array];
    
    Class Clz = NSClassFromString(clsName);
    NSAssert(Clz, @"加载 plist 文件时指定的 clsName - %@ 错误", clsName);
    
    for (NSDictionary *dict in list) {
        [arrayM addObject:[Clz DL_objectWithDict:dict]];
    }
    
    return arrayM.copy;
}

- (NSArray *)arrayByReplacingNullsWithBlanks {
    
    NSMutableArray *replaced = [self mutableCopy];
    
    const id nul = [NSNull null];
    
    const NSString *blank = @"";
    
    for (int idx = 0; idx < [replaced count]; idx++) {
        
        id object = [replaced objectAtIndex:idx];
        
        if (object == nul) [replaced replaceObjectAtIndex:idx withObject:blank];
        
        else if ([object isKindOfClass:[NSDictionary class]]) [replaced replaceObjectAtIndex:idx withObject:[object dictionaryByReplacingNullsWithBlanks]];
        
        else if ([object isKindOfClass:[NSArray class]]) [replaced replaceObjectAtIndex:idx withObject:[object arrayByReplacingNullsWithBlanks]];
        
    }
    
    return [replaced copy];
    
}


@end
