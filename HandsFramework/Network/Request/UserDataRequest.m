//
//  UserDataRequest.m
//  HandsFramework
//
//  Created by Robson Moreira on 10/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//


#import "UserDataRequest.h"
#import "Client.h"

@implementation UserDataRequest

+ (void)getCount:(void (^)(NSURLSessionDataTask *, id))success failure:(void (^)(NSURLSessionDataTask *, NSError *))failure {
    [[Client getClientUserData] GET:@"user/data/count" parameters:nil progress:nil success:success failure:failure];
}

+ (void)getAll:(void (^)(NSURLSessionDataTask *, id))success failure:(void (^)(NSURLSessionDataTask *, NSError *))failure {
    [[Client getClientUserData] GET:@"user/data/all" parameters:nil progress:nil success:success failure:failure];
}

+ (void)getPage:(NSInteger)page success:(void (^)(NSURLSessionDataTask *, id))success failure:(void (^)(NSURLSessionDataTask *, NSError *))failure {
    NSString *url = [NSString stringWithFormat:@"user/data/page/%ld", (long)page];
    [[Client getClientUserData] GET:url parameters:nil progress:nil success:success failure:failure];
}

+ (void)getById:(NSString *)idField success:(void (^)(NSURLSessionDataTask *, id))success failure:(void (^)(NSURLSessionDataTask *, NSError *))failure {
    NSString *url = [NSString stringWithFormat:@"user/data/%ld", (long)idField];
    [[Client getClientUserData] GET:url parameters:nil progress:nil success:success failure:failure];
}

+ (void)updateUserData:(NSString *)idField userData:(UserData *)userData success:(void (^)(NSURLSessionDataTask *, id))success failure:(void (^)(NSURLSessionDataTask *, NSError *))failure {
    NSString *url = [NSString stringWithFormat:@"user/data/%@", idField];
    [[Client getClientUserData] PUT:url parameters:userData.toDictionary success:success failure:failure];
}

@end
