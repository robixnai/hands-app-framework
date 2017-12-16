//
//  HandsFrameworkTests.m
//  HandsFrameworkTests
//
//  Created by Robson Moreira on 10/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LocationModel.h"

@interface HandsFrameworkTests : XCTestCase

@end

LocationModel *locationModel;

@implementation HandsFrameworkTests

- (void)setUp {
    [super setUp];
    locationModel = [[LocationModel alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testForServicesEnabled {
    BOOL isServicesEnabled = locationModel.canGetLocation;
    XCTAssertTrue(isServicesEnabled);
}

- (void)testLocation {
    CLLocation *location = [locationModel getLocation];
    XCTAssertNotNil(location);
}

- (void)testLatitude {
    double latitude = [locationModel getLatitude];
    XCTAssertNotEqual(0, latitude);
}

- (void)testLongitude {
    double longitude = [locationModel getLongitude];
    XCTAssertNotEqual(0, longitude);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
