//
//  QYHYNetWorkTool.m
//  HYComunity
//
//  Created by Qianyuanhengye on 2017/8/28.
//  Copyright © 2017年 Qianyuanhengye. All rights reserved.
//

#import "QYHYNetWorkTool.h"
#import "NSDictionary+DLNull.h"


@implementation QYHYNetWorkTool

//请求文件方法
+ (void)requestWithUrl:(NSString *)url WithParams:(NSDictionary *)params AndSucceedBlock:(void (^)(id))succeed AndFailure:(void (^)(NSError *))failure {
    
    [[self sessionManager] GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        
        if (succeed) {
            succeed(dic);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
    
}


+ (AFHTTPSessionManager *)sessionManager {
    static AFHTTPSessionManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [AFHTTPSessionManager manager];
        [manager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
        [manager.requestSerializer setTimeoutInterval:10.0f];
        [manager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
        manager.requestSerializer = [AFHTTPRequestSerializer serializer];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"image/jpeg",@"multipart/form-data", nil];
    });
    return manager;
}

@end
