//
//  UserDataDataProvider.swift
//  HandsApp
//
//  Created by Robson Moreira on 14/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import Foundation

class UserDataDataProvider: DataProviderManager <UserDataDataProviderProtocol, UserDataViewModel> {
    
    func getUserData(page: Int) {
        UserDataModel.sharedInstance().getPage(page) { (userDataResponse, error) in
            if error == nil {
                if let userDataList = userDataResponse {
                    if self.viewModel == nil {
                        self.viewModel = UserDataViewModel(userData: userDataList as! [UserData])
                    } else {
                        self.viewModel?.updateUserDataList(userData: userDataList as! [UserData])
                    }
                    if let vm = self.viewModel {
                        self.delegate?.success(viewModel: vm)
                    }
                }
            } else {
                self.delegate?.errorData(self.delegate, error: error! as NSError)
            }
        }
    }
    
}
