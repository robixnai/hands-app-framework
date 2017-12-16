//
//    UserData.h
//
//    Create by Robson Moreira on 11/12/2017
//    Copyright © 2017. All rights reserved.
//

//    Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface UserData : NSObject

@property (nonatomic, strong) NSString *idField;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *arrival;
@property (nonatomic, assign) NSInteger batteryPercentage;
@property (nonatomic, assign) NSInteger batteryState;
@property (nonatomic, strong) NSString *categorie;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSString *departure;
@property (nonatomic, strong) NSString *deviceId;
@property (nonatomic, strong) NSString *deviceModel;
@property (nonatomic, strong) NSString *euid;
@property (nonatomic, strong) NSString *home;
@property (nonatomic, strong) NSString *istInstalledApps;
@property (nonatomic, strong) NSString *os;
@property (nonatomic, strong) NSString *osVersion;
@property (nonatomic, assign) NSInteger precision;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSString *venueLngLat;
@property (nonatomic, strong) NSString *venueName;
@property (nonatomic, assign) NSInteger venueTotalTime;
@property (nonatomic, strong) NSString *work;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
