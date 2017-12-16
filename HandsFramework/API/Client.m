//
//  Client.m
//  HandsFramework
//
//  Created by Robson Moreira on 11/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import "Client.h"

static NSString * const BASE_URL = @"http://127.0.0.1:3000/";
static NSString * const MAPS_GEOCODE_URL = @"http://maps.googleapis.com/maps/api/geocode/";

static AFHTTPSessionManager *clientUserData;
static AFHTTPSessionManager *clientAddress;

@implementation Client

+ (AFHTTPSessionManager *)getClientUserData {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        clientUserData = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:BASE_URL]];
        clientUserData.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    });
    return clientUserData;
}

+ (AFHTTPSessionManager *)getClientAddress {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        clientAddress = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:MAPS_GEOCODE_URL]];
        clientAddress.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    });
    return clientAddress;
}

@end
