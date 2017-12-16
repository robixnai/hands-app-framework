//
//  UserDataDetailViewController+UserDataDataDetailProviderProtocol.swift
//  HandsApp
//
//  Created by Robson Moreira on 16/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import Foundation
import UIKit
import SVProgressHUD

extension UserDataDetailViewController: LocationDataProviderProtocol {
    
    func success(viewModel: Any) {
        self.viewModel = viewModel as? UserDataDetailViewModel
        self.viewWillAppear(true)
        SVProgressHUD.dismiss()
    }

    func errorData(_ provider: GenericDataProviderProtocol?, error: NSError) {
        SVProgressHUD.dismiss()
        self.showError(title: "Erro", message: "Erro na API. Tente novamente mais tarde!", description: "", error: error)
    }
    
    func errorGps(_ provider: GenericDataProviderProtocol?, error: NSError) {
        SVProgressHUD.dismiss()
        self.showError(title: "Alerta", message: "Permissão de localização não está ativado. Vá para Ajustes->Hands App e permitir o aceso a localização.", description: "", error: error)
    }
    
}
