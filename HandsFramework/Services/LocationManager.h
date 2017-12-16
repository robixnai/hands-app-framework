//
//  LocationManager.h
//  HandsFramework
//
//  Created by Robson Moreira on 12/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface LocationManager : NSObject<CLLocationManagerDelegate> {
    CLLocation *_location;
}

@property (nonatomic , strong) CLLocationManager *cLLocationManager;

- (CLLocation *)getLocation;
- (void)stopUsingGps;
- (double)getLatitude;
- (double)getLongitude;
- (BOOL)canGetLocation;

@end
