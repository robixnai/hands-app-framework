//
//  UserDataModel.h
//  HandsFramework
//
//  Created by Robson Moreira on 13/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserData.h"

@interface UserDataModel : NSObject

+ (instancetype)sharedInstance;

- (void)getCount:(void (^)(NSInteger count, NSError *error))block;

- (void)getAll:(void (^)(NSMutableArray *userDataList, NSError *error))block;

- (void)getPage:(NSInteger)page AndResponse:(void (^)(NSMutableArray *userDataList, NSError *error))block;

- (void)getById:(NSString *)idField AndResponse:(void (^)(UserData *userData, NSError *error))block;

- (void)updateUserData:(NSString *)idField AndUserData:(UserData *) userData AndResponse:(void (^)(UserData *userData, NSError *error))block;

@end
