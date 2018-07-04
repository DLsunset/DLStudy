//
//  QYHYNetWorkTool.h
//  HYComunity
//
//  Created by Qianyuanhengye on 2017/8/28.
//  Copyright © 2017年 Qianyuanhengye. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYHYNetWorkTool : NSObject

/**
 请求数据通用方法
 
 @param url 请求地址
 @param params 请求参数,是一个字典,字典内容为接口文档中token表中的键值对
 @param succeed 成功回调一个字典
 @param failure 失败回调error
 */


+ (void)requestWithUrl:(NSString *)url WithParams:(NSDictionary *)params AndSucceedBlock:(void (^)(id dataDic))succeed AndFailure:(void (^)(NSError *error))failure;


@end
