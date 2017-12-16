//
//  UserDataDetailViewModel.swift
//  HandsApp
//
//  Created by Robson Moreira on 15/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import Foundation

class UserDataDetailViewModel {
    
    static let TYPE_ANDROID: String = "android"
    static let TYPE_IOS: String = "ios"
    
    private var userData: UserData?
    private var installedApps: [String]?
    
    init(userData: UserData) {
        self.userData = userData
    }
    
    var title: String? {
        if UserDataViewModel.TYPE_ANDROID == self.userData?.os {
            return "Android - \(String(describing: self.userData!.osVersion!))"
        } else {
            return "iOS - \(String(describing: self.userData!.osVersion!))"
        }
    }
    
    var osImage: UIImage? {
        if UserDataViewModel.TYPE_ANDROID == self.userData?.os {
            return UIImage(named: "ic_android")
        } else {
            return UIImage(named: "ic_apple")
        }
    }
    
    var id: String? {
        return self.userData?.idField
    }
    
    var deviceModel: String? {
        return self.userData?.deviceModel
    }
    
    var batteryState: Int? {
        return self.userData?.batteryState
    }
    
    var batteryPercentage: Int? {
        return self.userData?.batteryPercentage
    }
    
    var amountInstalledApps: Int? {
        if self.istInstalledApps != nil {
            return self.istInstalledApps?.count
        }
        return 0
    }
    
    var istInstalledApps: [String]? {
        if self.userData?.istInstalledApps != "null" {
            self.installedApps = (self.userData?.istInstalledApps.components(separatedBy: "|"))!
        }
        return self.installedApps
    }
    
    var arrival: String? {
        return self.userData?.arrival
    }
    
    var departure: String? {
        return self.userData?.departure
    }
    
    var categorie: String? {
        return self.userData?.categorie
    }
    
    var venueName: String? {
        return self.userData?.venueName
    }
    
    var venueTotalTime: Int? {
        return self.userData?.venueTotalTime
    }
    
    var precision: Int? {
        return self.userData?.precision
    }
    
    var venueLngLat: String? {
        return self.userData?.venueLngLat
    }
    
    var address: String? {
        return self.userData?.address
    }
    
    var city: String? {
        return self.userData?.city
    }
    
    var state: String? {
        return self.userData?.state
    }
    
    var country: String? {
        return self.userData?.country
    }
    
    var homeLatitude: Double? {
        let location: [String] = (self.userData?.home.components(separatedBy: " "))!
        return Double(location[1])
    }
    
    var homeLongitude: Double? {
        let location: [String] = (self.userData?.home.components(separatedBy: " "))!
        return Double(location[0])
    }
    
    var workLatitude: Double? {
        let location: [String] = (self.userData?.work.components(separatedBy: " "))!
        return Double(location[1])
    }
    
    var workLongitude: Double? {
        let location: [String] = (self.userData?.work.components(separatedBy: " "))!
        return Double(location[0])
    }
    
    var venueLatitude: Double? {
        let location: [String] = (self.userData?.venueLngLat.components(separatedBy: " "))!
        return Double(location[1])
    }
    
    var venueLongitude: Double? {
        let location: [String] = (self.userData?.venueLngLat.components(separatedBy: " "))!
        return Double(location[0])
    }
    
    var latLng: String {
        return "\(String(describing: self.venueLatitude!)),\(String(describing: self.venueLongitude!))"
    }
    
    var currentUserData: UserData? {
        return self.userData
    }
    
    func setLocation(latitude: Double, longitude: Double) {
        self.userData?.venueLngLat = "\(String(describing: longitude)) \(String(describing: latitude))"
    }
    
    func setAddress(addressList: [Address]) {
        var address: Address
        var city: Address
        var state: Address
        var country: Address
        if addressList.count > 6 {
            address = addressList[1]
            city = addressList[3]
            state = addressList[5]
            country = addressList[6]
        } else {
            address = addressList[1]
            city = addressList[2]
            state = addressList[3]
            country = addressList[4]
        }
        
        self.userData?.address = address.shortName
        self.userData?.city = city.shortName
        self.userData?.state = state.shortName
        self.userData?.country = country.longName
    }
    
}
