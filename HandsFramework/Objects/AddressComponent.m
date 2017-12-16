//
//    AddressComponent.m
//
//    Create by Robson Moreira on 12/12/2017
//    Copyright © 2017. All rights reserved.
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "AddressComponent.h"
#import "Address.h"

NSString *const kResultAddressComponents = @"address_components";
NSString *const kResultTypes = @"types";

@interface AddressComponent ()

@end

@implementation AddressComponent

/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if(dictionary[kResultAddressComponents] != nil && [dictionary[kResultAddressComponents] isKindOfClass:[NSArray class]]){
        NSArray *addressDictionaries = dictionary[kResultAddressComponents];
        NSMutableArray *addressItems = [NSMutableArray array];
        for(NSDictionary *addressDictionary in addressDictionaries){
            Address *addressItem = [[Address alloc] initWithDictionary:addressDictionary];
            [addressItems addObject:addressItem];
        }
        self.addressList = addressItems;
    }
    if(![dictionary[kResultTypes] isKindOfClass:[NSNull class]]){
        self.types = dictionary[kResultTypes];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary {
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.addressList != nil){
        NSMutableArray *dictionaryElements = [NSMutableArray array];
        for(Address *addressElement in self.addressList){
            [dictionaryElements addObject:[addressElement toDictionary]];
        }
        dictionary[kResultAddressComponents] = dictionaryElements;
    }
    if(self.types != nil){
        dictionary[kResultTypes] = self.types;
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
    if(self.addressList != nil){
        [aCoder encodeObject:self.addressList forKey:kResultAddressComponents];
    }
    if(self.types != nil){
        [aCoder encodeObject:self.types forKey:kResultTypes];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    self.addressList = [aDecoder decodeObjectForKey:kResultAddressComponents];
    self.types = [aDecoder decodeObjectForKey:kResultTypes];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone {
    AddressComponent *copy = [AddressComponent new];
    
    copy.addressList = [self.addressList copy];
    copy.types = [self.types copy];
    
    return copy;
}

@end
