//
//  LocationManager.m
//  HandsFramework
//
//  Created by Robson Moreira on 12/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import "LocationManager.h"

BOOL isGpsEnabled = NO;
BOOL canGetLocation = NO;

@implementation LocationManager

- (id)init {
    if ((self = [super init])) {
        [self getLocation];
    }
    return self;
}

- (CLLocation *)getLocation {
    _cLLocationManager = [[CLLocationManager alloc] init];
    _cLLocationManager.delegate = self;
    _cLLocationManager.distanceFilter = kCLDistanceFilterNone;
    _cLLocationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    isGpsEnabled = [CLLocationManager locationServicesEnabled] && [CLLocationManager authorizationStatus] != kCLAuthorizationStatusDenied;
    if (isGpsEnabled) {
        [_cLLocationManager startUpdatingLocation];
//        [NSThread sleepForTimeInterval:1.0f];
        _location = _cLLocationManager.location;
        if (_location != nil) {
            canGetLocation = YES;
        }
    }
    return _location;
}

- (void)stopUsingGps {
    if (_cLLocationManager != nil) {
        [_cLLocationManager stopUpdatingLocation];
    }
}

- (double)getLatitude {
    if (_location != nil) {
        return _location.coordinate.latitude;
    }
    return 0;
}

- (double)getLongitude {
    if (_location) {
        return _location.coordinate.longitude;
    }
    return 0;
}

- (BOOL)canGetLocation {
    return canGetLocation;
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"Erro ao obter a localização");
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    NSLog(@"Latitude: %f", [locations firstObject].coordinate.latitude);
}

@end
