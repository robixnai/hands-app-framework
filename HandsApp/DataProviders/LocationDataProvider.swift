//
//  LocationDataProvider.swift
//  HandsApp
//
//  Created by Robson Moreira on 16/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import Foundation

class LocationDataProvider: DataProviderManager <LocationDataProviderProtocol, UserDataDetailViewModel> {
    
    func getLocation(viewModel: UserDataDetailViewModel?) {
        let locationModel = LocationModel()
        if locationModel.canGetLocation() {
            self.viewModel = viewModel
            self.viewModel?.setLocation(latitude: locationModel.getLatitude(), longitude: locationModel.getLongitude())
            self.getAddress(latLng: (self.viewModel!.latLng))
        } else {
            let error = NSError(domain: "", code: 500, userInfo: nil)
            self.delegate?.errorGps(self.delegate, error: error)
        }
    }
    
    func getAddress(latLng: String) {
        AddressModel.sharedInstance().getAddress(latLng) { (addressResponse, error) in
            if error == nil {
                if let addressList = addressResponse {
                    self.viewModel?.setAddress(addressList: addressList as! [Address])
                    self.updateLocation()
                }
            } else {
                self.delegate?.errorData(self.delegate, error: error! as NSError)
            }
        }
    }
    
    func updateLocation() {
        let userData: UserData = (self.viewModel?.currentUserData)!
        UserDataModel.sharedInstance().updateUserData(userData.idField, andUserData: userData) { (userDataResponse, error) in
            if error == nil {
                if let vm = self.viewModel {
                    self.delegate?.success(viewModel: vm)
                }
            } else {
                self.delegate?.errorData(self.delegate, error: error! as NSError)
            }
        }
    }
    
}
