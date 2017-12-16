//
//  UserDataRequest.h
//  HandsFramework
//
//  Created by Robson Moreira on 10/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserData.h"

@interface UserDataRequest : NSObject

+ (void)getCount:(void (^)(NSURLSessionDataTask *task, id responseObject))success
         failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;

+ (void)getAll:(void (^)(NSURLSessionDataTask *task, id responseObject))success
       failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;

+ (void)getPage:(NSInteger)page
        success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
        failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;

+ (void)getById:(NSString *)idField
        success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
        failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;

+ (void)updateUserData:(NSString *)idField
              userData:(UserData *)userData
              success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
              failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;

@end
