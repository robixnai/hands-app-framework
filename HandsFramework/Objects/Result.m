//
//  Result.m
//  HandsFramework
//
//  Created by Robson Moreira on 13/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import "Result.h"
#import "AddressComponent.h"

@implementation Result

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    _data = [NSMutableArray arrayWithCapacity:[dictionary count]];
    for (NSDictionary *attributes in dictionary) {
        AddressComponent *addressComponentResult = [[AddressComponent alloc] initWithDictionary:attributes];
        [_data addObject:addressComponentResult];
    }
    return self;
}

- (id)getData {
    return _data;
}

@end
