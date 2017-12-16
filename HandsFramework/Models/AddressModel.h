//
//  AddressModel.h
//  HandsFramework
//
//  Created by Robson Moreira on 13/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressModel : NSObject

+ (instancetype)sharedInstance;

- (void)getAddress:(NSString *)latLong AndResponse:(void (^)(NSMutableArray *addressList, NSError *error))block;

@end
