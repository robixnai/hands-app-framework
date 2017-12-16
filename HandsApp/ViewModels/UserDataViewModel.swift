//
//  UserDataViewModel.swift
//  HandsApp
//
//  Created by Robson Moreira on 13/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import UIKit

class UserDataViewModel {
    
    static let TYPE_ANDROID: String = "android"
    static let TYPE_IOS: String = "ios"
    
    typealias completion<T> = (_ result: T, _ failure: NSError?) -> Void
    
    private var userDataList: [UserData]?
    private var currentUserData: UserData?
    
    init(userData: [UserData]) {
        self.userDataList = userData
    }
    
    var countOfUserData: Int? {
        return self.userDataList?.count
    }
    
    var deviceModel: String? {
        return self.currentUserData?.deviceModel
    }
    
    var deviceId: String? {
        return self.currentUserData?.deviceId
    }
    
    var osVersion: String? {
        return self.currentUserData?.osVersion
    }
    
    var batteryPercentageImage: UIImage? {
        if self.batteryPercentage! <= 20 {
            return UIImage(named: "ic_battery_charging_20")
        } else if self.batteryPercentage! > 20 && self.batteryPercentage! <= 30 {
            return UIImage(named: "ic_battery_charging_30")
        } else if self.batteryPercentage! > 30 && self.batteryPercentage! <= 50 {
            return UIImage(named: "ic_battery_charging_50")
        } else if self.batteryPercentage! > 50 && self.batteryPercentage! <= 60 {
            return UIImage(named: "ic_battery_charging_60")
        } else if self.batteryPercentage! > 60 && self.batteryPercentage! <= 80 {
            return UIImage(named: "ic_battery_charging_80")
        } else if self.batteryPercentage! > 80 && self.batteryPercentage! <= 90 {
            return UIImage(named: "ic_battery_charging_90")
        } else {
            return UIImage(named: "ic_battery_charging_100")
        }
    }
    
    var batteryPercentage: Int? {
        return self.currentUserData?.batteryPercentage
    }
    
    var osImage: UIImage? {
        if UserDataViewModel.TYPE_ANDROID == self.currentUserData?.os {
            return UIImage(named: "ic_android")
        } else {
            return UIImage(named: "ic_apple")
        }
    }
    
    var osName: String? {
        if UserDataViewModel.TYPE_ANDROID == self.currentUserData?.os {
            return "Android"
        } else {
            return "iOS"
        }
    }
    
    func updateUserDataList(userData: [UserData]) {
        self.userDataList = self.userDataList! + userData
    }
    
    func setupCurrentUserData(index: Int) {
        self.currentUserData = self.userDataList?[index]
    }
    
    func getUserData(index: Int) -> UserData {
        return (self.userDataList?[index])!
    }

}
