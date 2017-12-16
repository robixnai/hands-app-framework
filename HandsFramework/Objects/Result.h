//
//  Result.h
//  HandsFramework
//
//  Created by Robson Moreira on 13/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Result<__covariant ObjectType> : NSObject

@property (nonatomic, strong) ObjectType data;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (ObjectType)getData;

@end
