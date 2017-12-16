//
//  AddressRequest.m
//  HandsFramework
//
//  Created by Robson Moreira on 12/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import "AddressRequest.h"
#import "Client.h"

@implementation AddressRequest

+ (void)getAddress:(NSString *)latLong success:(void (^)(NSURLSessionDataTask *, id))success failure:(void (^)(NSURLSessionDataTask *, NSError *))failure {
    NSString *urlQuery = [NSString stringWithFormat:@"json?latlng=%@", latLong];
    [[Client getClientAddress] GET:urlQuery parameters:nil progress:nil success:success failure:failure];
}

@end
