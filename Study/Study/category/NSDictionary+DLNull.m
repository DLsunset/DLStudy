//
//  NSDictionary+DLNull.m
//  HYComunity
//
//  Created by Qianyuanhengye on 2017/9/14.
//  Copyright © 2017年 Qianyuanhengye. All rights reserved.
//

#import "NSDictionary+DLNull.h"
#import "NSArray+DLAddition.h"

@implementation NSDictionary (DLNull)

- (NSDictionary *)dictionaryByReplacingNullsWithBlanks {
    
    const NSMutableDictionary *replaced = [self mutableCopy];
    
    const id nul = [NSNull null];
    
    const NSString *blank = @"";
    
    for (NSString *key in self) {
        
        id object = [self objectForKey:key];
        
        if (object == nul) [replaced setObject:blank forKey:key];
        
        else if ([object isKindOfClass:[NSDictionary class]]) [replaced setObject:[object dictionaryByReplacingNullsWithBlanks] forKey:key];
        
        else if ([object isKindOfClass:[NSArray class]]) [replaced setObject:[object arrayByReplacingNullsWithBlanks] forKey:key];
        
    }
    
    return [NSDictionary dictionaryWithDictionary:[replaced copy]];
    
}


@end
