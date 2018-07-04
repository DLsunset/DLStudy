//
//  SubjectModel.m
//  Study
//
//  Created by qyhy on 2018/7/4.
//  Copyright © 2018年 QYhengye. All rights reserved.
//

#import "SubjectModel.h"

@implementation SubjectModel

+ (instancetype)modelWithDict:(NSDictionary *)dict {
    
    SubjectModel *model = [[SubjectModel alloc] init];
    [model setValuesForKeysWithDictionary:dict];
    return model;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
}

@end
