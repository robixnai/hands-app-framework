//
//    Address.m
//
//    Create by Robson Moreira on 12/12/2017
//    Copyright © 2017. All rights reserved.
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Address.h"

NSString *const kAddressLongName = @"long_name";
NSString *const kAddressShortName = @"short_name";
NSString *const kAddressTypes = @"types";

@interface Address ()

@end

@implementation Address

/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if(![dictionary[kAddressLongName] isKindOfClass:[NSNull class]]){
        self.longName = dictionary[kAddressLongName];
    }
    if(![dictionary[kAddressShortName] isKindOfClass:[NSNull class]]){
        self.shortName = dictionary[kAddressShortName];
    }
    if(![dictionary[kAddressTypes] isKindOfClass:[NSNull class]]){
        self.types = dictionary[kAddressTypes];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary {
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.longName != nil){
        dictionary[kAddressLongName] = self.longName;
    }
    if(self.shortName != nil){
        dictionary[kAddressShortName] = self.shortName;
    }
    if(self.types != nil){
        dictionary[kAddressTypes] = self.types;
    }
    return dictionary;
    
}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder {
    if(self.longName != nil){
        [aCoder encodeObject:self.longName forKey:kAddressLongName];
    }
    if(self.shortName != nil){
        [aCoder encodeObject:self.shortName forKey:kAddressShortName];
    }
    if(self.types != nil){
        [aCoder encodeObject:self.types forKey:kAddressTypes];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    self.longName = [aDecoder decodeObjectForKey:kAddressLongName];
    self.shortName = [aDecoder decodeObjectForKey:kAddressShortName];
    self.types = [aDecoder decodeObjectForKey:kAddressTypes];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone {
    Address *copy = [Address new];
    
    copy.longName = [self.longName copy];
    copy.shortName = [self.shortName copy];
    copy.types = [self.types copy];
    
    return copy;
}
@end
