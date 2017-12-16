//
//  Client.h
//  HandsFramework
//
//  Created by Robson Moreira on 11/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import <Foundation/Foundation.h>
@import AFNetworking;

@interface Client : NSObject

+ (AFHTTPSessionManager *)getClientUserData;
+ (AFHTTPSessionManager *)getClientAddress;

@end
