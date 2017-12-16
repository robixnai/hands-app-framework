//
//  LocationModel.h
//  HandsFramework
//
//  Created by Robson Moreira on 13/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocationManager.h"

@interface LocationModel : NSObject {
    LocationManager *locationManager;
}

- (void)stopUsingGps;

- (double)getLatitude;

- (double)getLongitude;

- (BOOL)canGetLocation;

- (CLLocation *)getLocation;

@end
