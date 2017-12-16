//
//  AddressModel.m
//  HandsFramework
//
//  Created by Robson Moreira on 13/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import "AddressModel.h"
#import "AddressRequest.h"
#import "Result.h"
#import "AddressComponent.h"

@implementation AddressModel

+ (instancetype)sharedInstance {
    static AddressModel *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[AddressModel alloc] init];
    });
    return sharedInstance;
}

- (void)getAddress:(NSString *)latLong AndResponse:(void (^)(NSMutableArray *, NSError *))block {
    [AddressRequest getAddress:latLong success:^(NSURLSessionDataTask * __unused task, id response) {
        Result *result = [[Result alloc] initWithDictionary:[response valueForKeyPath:@"results"]];
        AddressComponent *addressComponent;
        NSError *error;
        if ([[result getData] count] == 0) {
            NSMutableDictionary *details = [NSMutableDictionary dictionary];
            [details setValue:@"Endereço não encontrado" forKey:NSLocalizedDescriptionKey];
            error = [NSError errorWithDomain:@"Not Found" code:404 userInfo:details];
        } else {
            addressComponent = [[result getData] objectAtIndex:0];
        }
        if (block) {
            block([NSMutableArray arrayWithArray:[addressComponent addressList]], error);
        }
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        if (block) {
            block([NSMutableArray array], error);
        }
    }];
}

@end
