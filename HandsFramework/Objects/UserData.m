//
//    UserData.m
//
//    Create by Robson Moreira on 11/12/2017
//    Copyright © 2017. All rights reserved.
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import "UserData.h"

NSString *const kUserDataIdField = @"_id";
NSString *const kUserDataAddress = @"address";
NSString *const kUserDataArrival = @"arrival";
NSString *const kUserDataBatteryPercentage = @"batteryPercentage";
NSString *const kUserDataBatteryState = @"batteryState";
NSString *const kUserDataCategorie = @"categorie";
NSString *const kUserDataCity = @"city";
NSString *const kUserDataCountry = @"country";
NSString *const kUserDataDeparture = @"departure";
NSString *const kUserDataDeviceId = @"deviceId";
NSString *const kUserDataDeviceModel = @"deviceModel";
NSString *const kUserDataEuid = @"euid";
NSString *const kUserDataHome = @"home";
NSString *const kUserDataIstInstalledApps = @"istInstalledApps";
NSString *const kUserDataOs = @"os";
NSString *const kUserDataOsVersion = @"osVersion";
NSString *const kUserDataPrecision = @"precision";
NSString *const kUserDataState = @"state";
NSString *const kUserDataVenueLngLat = @"venueLngLat";
NSString *const kUserDataVenueName = @"venueName";
NSString *const kUserDataVenueTotalTime = @"venueTotalTime";
NSString *const kUserDataWork = @"work";

@interface UserData ()
@end
@implementation UserData

/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if(![dictionary[kUserDataIdField] isKindOfClass:[NSNull class]]){
        self.idField = dictionary[kUserDataIdField];
    }
    if(![dictionary[kUserDataAddress] isKindOfClass:[NSNull class]]){
        self.address = dictionary[kUserDataAddress];
    }
    if(![dictionary[kUserDataArrival] isKindOfClass:[NSNull class]]){
        self.arrival = dictionary[kUserDataArrival];
    }
    if(![dictionary[kUserDataBatteryPercentage] isKindOfClass:[NSNull class]]){
        self.batteryPercentage = [dictionary[kUserDataBatteryPercentage] integerValue];
    }
    if(![dictionary[kUserDataBatteryState] isKindOfClass:[NSNull class]]){
        self.batteryState = [dictionary[kUserDataBatteryState] integerValue];
    }
    if(![dictionary[kUserDataCategorie] isKindOfClass:[NSNull class]]){
        self.categorie = dictionary[kUserDataCategorie];
    }
    if(![dictionary[kUserDataCity] isKindOfClass:[NSNull class]]){
        self.city = dictionary[kUserDataCity];
    }
    if(![dictionary[kUserDataCountry] isKindOfClass:[NSNull class]]){
        self.country = dictionary[kUserDataCountry];
    }
    if(![dictionary[kUserDataDeparture] isKindOfClass:[NSNull class]]){
        self.departure = dictionary[kUserDataDeparture];
    }
    if(![dictionary[kUserDataDeviceId] isKindOfClass:[NSNull class]]){
        self.deviceId = dictionary[kUserDataDeviceId];
    }
    if(![dictionary[kUserDataDeviceModel] isKindOfClass:[NSNull class]]){
        self.deviceModel = dictionary[kUserDataDeviceModel];
    }
    if(![dictionary[kUserDataEuid] isKindOfClass:[NSNull class]]){
        self.euid = dictionary[kUserDataEuid];
    }
    if(![dictionary[kUserDataHome] isKindOfClass:[NSNull class]]){
        self.home = dictionary[kUserDataHome];
    }
    if(![dictionary[kUserDataIstInstalledApps] isKindOfClass:[NSNull class]]){
        self.istInstalledApps = dictionary[kUserDataIstInstalledApps];
    }
    if(![dictionary[kUserDataOs] isKindOfClass:[NSNull class]]){
        self.os = dictionary[kUserDataOs];
    }
    if(![dictionary[kUserDataOsVersion] isKindOfClass:[NSNull class]]){
        self.osVersion = dictionary[kUserDataOsVersion];
    }
    if(![dictionary[kUserDataPrecision] isKindOfClass:[NSNull class]]){
        self.precision = [dictionary[kUserDataPrecision] integerValue];
    }
    if(![dictionary[kUserDataState] isKindOfClass:[NSNull class]]){
        self.state = dictionary[kUserDataState];
    }
    if(![dictionary[kUserDataVenueLngLat] isKindOfClass:[NSNull class]]){
        self.venueLngLat = dictionary[kUserDataVenueLngLat];
    }
    if(![dictionary[kUserDataVenueName] isKindOfClass:[NSNull class]]){
        self.venueName = dictionary[kUserDataVenueName];
    }
    if(![dictionary[kUserDataVenueTotalTime] isKindOfClass:[NSNull class]]){
        self.venueTotalTime = [dictionary[kUserDataVenueTotalTime] integerValue];
    }
    if(![dictionary[kUserDataWork] isKindOfClass:[NSNull class]]){
        self.work = dictionary[kUserDataWork];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    if(self.idField != nil){
        dictionary[kUserDataIdField] = self.idField;
    }
    if(self.address != nil){
        dictionary[kUserDataAddress] = self.address;
    }
    if(self.arrival != nil){
        dictionary[kUserDataArrival] = self.arrival;
    }
    dictionary[kUserDataBatteryPercentage] = @(self.batteryPercentage);
    dictionary[kUserDataBatteryState] = @(self.batteryState);
    if(self.categorie != nil){
        dictionary[kUserDataCategorie] = self.categorie;
    }
    if(self.city != nil){
        dictionary[kUserDataCity] = self.city;
    }
    if(self.country != nil){
        dictionary[kUserDataCountry] = self.country;
    }
    if(self.departure != nil){
        dictionary[kUserDataDeparture] = self.departure;
    }
    if(self.deviceId != nil){
        dictionary[kUserDataDeviceId] = self.deviceId;
    }
    if(self.deviceModel != nil){
        dictionary[kUserDataDeviceModel] = self.deviceModel;
    }
    if(self.euid != nil){
        dictionary[kUserDataEuid] = self.euid;
    }
    if(self.home != nil){
        dictionary[kUserDataHome] = self.home;
    }
    if(self.istInstalledApps != nil){
        dictionary[kUserDataIstInstalledApps] = self.istInstalledApps;
    }
    if(self.os != nil){
        dictionary[kUserDataOs] = self.os;
    }
    if(self.osVersion != nil){
        dictionary[kUserDataOsVersion] = self.osVersion;
    }
    dictionary[kUserDataPrecision] = @(self.precision);
    if(self.state != nil){
        dictionary[kUserDataState] = self.state;
    }
    if(self.venueLngLat != nil){
        dictionary[kUserDataVenueLngLat] = self.venueLngLat;
    }
    if(self.venueName != nil){
        dictionary[kUserDataVenueName] = self.venueName;
    }
    dictionary[kUserDataVenueTotalTime] = @(self.venueTotalTime);
    if(self.work != nil){
        dictionary[kUserDataWork] = self.work;
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
    if(self.idField != nil){
        [aCoder encodeObject:self.idField forKey:kUserDataIdField];
    }
    if(self.address != nil){
        [aCoder encodeObject:self.address forKey:kUserDataAddress];
    }
    if(self.arrival != nil){
        [aCoder encodeObject:self.arrival forKey:kUserDataArrival];
    }
    [aCoder encodeObject:@(self.batteryPercentage) forKey:kUserDataBatteryPercentage];    [aCoder encodeObject:@(self.batteryState) forKey:kUserDataBatteryState];    if(self.categorie != nil){
        [aCoder encodeObject:self.categorie forKey:kUserDataCategorie];
    }
    if(self.city != nil){
        [aCoder encodeObject:self.city forKey:kUserDataCity];
    }
    if(self.country != nil){
        [aCoder encodeObject:self.country forKey:kUserDataCountry];
    }
    if(self.departure != nil){
        [aCoder encodeObject:self.departure forKey:kUserDataDeparture];
    }
    if(self.deviceId != nil){
        [aCoder encodeObject:self.deviceId forKey:kUserDataDeviceId];
    }
    if(self.deviceModel != nil){
        [aCoder encodeObject:self.deviceModel forKey:kUserDataDeviceModel];
    }
    if(self.euid != nil){
        [aCoder encodeObject:self.euid forKey:kUserDataEuid];
    }
    if(self.home != nil){
        [aCoder encodeObject:self.home forKey:kUserDataHome];
    }
    if(self.istInstalledApps != nil){
        [aCoder encodeObject:self.istInstalledApps forKey:kUserDataIstInstalledApps];
    }
    if(self.os != nil){
        [aCoder encodeObject:self.os forKey:kUserDataOs];
    }
    if(self.osVersion != nil){
        [aCoder encodeObject:self.osVersion forKey:kUserDataOsVersion];
    }
    [aCoder encodeObject:@(self.precision) forKey:kUserDataPrecision];    if(self.state != nil){
        [aCoder encodeObject:self.state forKey:kUserDataState];
    }
    if(self.venueLngLat != nil){
        [aCoder encodeObject:self.venueLngLat forKey:kUserDataVenueLngLat];
    }
    if(self.venueName != nil){
        [aCoder encodeObject:self.venueName forKey:kUserDataVenueName];
    }
    [aCoder encodeObject:@(self.venueTotalTime) forKey:kUserDataVenueTotalTime];    if(self.work != nil){
        [aCoder encodeObject:self.work forKey:kUserDataWork];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    self.idField = [aDecoder decodeObjectForKey:kUserDataIdField];
    self.address = [aDecoder decodeObjectForKey:kUserDataAddress];
    self.arrival = [aDecoder decodeObjectForKey:kUserDataArrival];
    self.batteryPercentage = [[aDecoder decodeObjectForKey:kUserDataBatteryPercentage] integerValue];
    self.batteryState = [[aDecoder decodeObjectForKey:kUserDataBatteryState] integerValue];
    self.categorie = [aDecoder decodeObjectForKey:kUserDataCategorie];
    self.city = [aDecoder decodeObjectForKey:kUserDataCity];
    self.country = [aDecoder decodeObjectForKey:kUserDataCountry];
    self.departure = [aDecoder decodeObjectForKey:kUserDataDeparture];
    self.deviceId = [aDecoder decodeObjectForKey:kUserDataDeviceId];
    self.deviceModel = [aDecoder decodeObjectForKey:kUserDataDeviceModel];
    self.euid = [aDecoder decodeObjectForKey:kUserDataEuid];
    self.home = [aDecoder decodeObjectForKey:kUserDataHome];
    self.istInstalledApps = [aDecoder decodeObjectForKey:kUserDataIstInstalledApps];
    self.os = [aDecoder decodeObjectForKey:kUserDataOs];
    self.osVersion = [aDecoder decodeObjectForKey:kUserDataOsVersion];
    self.precision = [[aDecoder decodeObjectForKey:kUserDataPrecision] integerValue];
    self.state = [aDecoder decodeObjectForKey:kUserDataState];
    self.venueLngLat = [aDecoder decodeObjectForKey:kUserDataVenueLngLat];
    self.venueName = [aDecoder decodeObjectForKey:kUserDataVenueName];
    self.venueTotalTime = [[aDecoder decodeObjectForKey:kUserDataVenueTotalTime] integerValue];
    self.work = [aDecoder decodeObjectForKey:kUserDataWork];
    return self;
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone {
    UserData *copy = [UserData new];
    
    copy.idField = [self.idField copy];
    copy.address = [self.address copy];
    copy.arrival = [self.arrival copy];
    copy.batteryPercentage = self.batteryPercentage;
    copy.batteryState = self.batteryState;
    copy.categorie = [self.categorie copy];
    copy.city = [self.city copy];
    copy.country = [self.country copy];
    copy.departure = [self.departure copy];
    copy.deviceId = [self.deviceId copy];
    copy.deviceModel = [self.deviceModel copy];
    copy.euid = [self.euid copy];
    copy.home = [self.home copy];
    copy.istInstalledApps = [self.istInstalledApps copy];
    copy.os = [self.os copy];
    copy.osVersion = [self.osVersion copy];
    copy.precision = self.precision;
    copy.state = [self.state copy];
    copy.venueLngLat = [self.venueLngLat copy];
    copy.venueName = [self.venueName copy];
    copy.venueTotalTime = self.venueTotalTime;
    copy.work = [self.work copy];
    
    return copy;
}

@end
