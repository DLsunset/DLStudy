//
//  SubjectModel.h
//  Study
//
//  Created by qyhy on 2018/7/4.
//  Copyright © 2018年 QYhengye. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SubjectModel : NSObject

@property (nonatomic, copy) NSString *aid;
@property (nonatomic, copy) NSString *answer;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *options;
@property (nonatomic, copy) NSString *status;

+ (instancetype)modelWithDict:(NSDictionary *)dict;

@end
