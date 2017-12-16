//
//    Address.h
//
//    Create by Robson Moreira on 12/12/2017
//    Copyright © 2017. All rights reserved.
//

//    Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface Address : NSObject

@property (nonatomic, strong) NSString *longName;
@property (nonatomic, strong) NSString *shortName;
@property (nonatomic, strong) NSArray *types;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
