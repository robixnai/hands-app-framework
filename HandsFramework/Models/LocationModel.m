//
//  LocationModel.m
//  HandsFramework
//
//  Created by Robson Moreira on 13/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import "LocationModel.h"

@implementation LocationModel

- (id)init {
    if ((self = [super init])) {
        locationManager = [[LocationManager alloc] init];
    }
    return self;
}

- (void)stopUsingGps {
    [locationManager stopUsingGps];
}

- (double)getLatitude {
    return [locationManager getLatitude];
}

- (double)getLongitude {
    return [locationManager getLongitude];
}

- (BOOL)canGetLocation {
    return [locationManager canGetLocation];
}

- (CLLocation *)getLocation {
    return [locationManager getLocation];
}

@end
