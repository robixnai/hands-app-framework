//
//  UserDataModel.m
//  HandsFramework
//
//  Created by Robson Moreira on 13/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import "UserDataModel.h"
#import "UserDataRequest.h"

@implementation UserDataModel

+ (instancetype)sharedInstance {
    static UserDataModel *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[UserDataModel alloc] init];
    });
    return sharedInstance;
}

- (void)getCount:(void (^)(NSInteger, NSError *))block {
    [UserDataRequest getCount:^(NSURLSessionDataTask * __unused task, id response) {
        NSInteger count = [response integerValue];
        if (block) {
            block(count, nil);
        }
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        if (block) {
            block(0, error);
        }
    }];
}

- (void)getAll:(void (^)(NSMutableArray *, NSError *))block {
    [UserDataRequest getAll:^(NSURLSessionDataTask * __unused task, id response) {
        NSMutableArray *userDataList = [NSMutableArray arrayWithCapacity:[response count]];
        for (NSDictionary *attributes in response) {
            UserData *userData = [[UserData alloc] initWithDictionary:attributes];
            [userDataList addObject:userData];
        }
        if (block) {
            block([NSMutableArray arrayWithArray:userDataList], nil);
        }
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        if (block) {
            block([NSMutableArray array], error);
        }
    }];
}

- (void)getPage:(NSInteger)page AndResponse:(void (^)(NSMutableArray *, NSError *))block {
    [UserDataRequest getPage:page success:^(NSURLSessionDataTask * __unused task, id response) {
        NSMutableArray *userDataList = [NSMutableArray arrayWithCapacity:[response count]];
        for (NSDictionary *attributes in response) {
            UserData *userData = [[UserData alloc] initWithDictionary:attributes];
            [userDataList addObject:userData];
        }
        if (block) {
            block([NSMutableArray arrayWithArray:userDataList], nil);
        }
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        if (block) {
            block([NSMutableArray array], error);
        }
    }];
}

- (void)getById:(NSString *)idField AndResponse:(void (^)(UserData *, NSError *))block {
    [UserDataRequest getById:idField success:^(NSURLSessionDataTask * __unused task, id response) {
        UserData *userData = [[UserData alloc] initWithDictionary:response];
        if (block) {
            block(userData, nil);
        }
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        if (block) {
            block(nil, error);
        }
    }];
}

- (void)updateUserData:(NSString *)idField AndUserData:(UserData *)userData AndResponse:(void (^)(UserData *, NSError *))block {
    [UserDataRequest updateUserData:idField userData:userData success:^(NSURLSessionDataTask * __unused task, id response) {
        UserData *userData = [[UserData alloc] initWithDictionary:response];
        if (block) {
            block(userData, nil);
        }
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        if (block) {
            block(nil, error);
        }
    }];
}

@end
