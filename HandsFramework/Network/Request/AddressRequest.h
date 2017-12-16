//
//  AddressRequest.h
//  HandsFramework
//
//  Created by Robson Moreira on 12/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressRequest : NSObject

+ (void)getAddress:(NSString *)latLong
           success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
           failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;

@end
