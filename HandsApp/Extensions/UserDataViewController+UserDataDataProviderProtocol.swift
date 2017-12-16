//
//  UserDataViewController+UserDataProviderProtocol.swift
//  HandsApp
//
//  Created by Robson Moreira on 14/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import Foundation
import UIKit
import SVProgressHUD

extension UserDataViewController: UserDataDataProviderProtocol {
    
    func success(viewModel: Any) {
        SVProgressHUD.dismiss()
        self.viewModel = viewModel as? UserDataViewModel
        self.userDataCollectionView.reloadData()
    }
    
    func errorData(_ provider: GenericDataProviderProtocol?, error: NSError) {
        SVProgressHUD.dismiss()
        self.showError(title: "Erro", message: "Erro na API. Tente novamente mais tarde!", description: "", error: error)
    }
    
}
