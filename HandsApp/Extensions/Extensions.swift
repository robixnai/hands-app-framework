//
//  Extensions.swift
//  HandsApp
//
//  Created by Robson Moreira on 13/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import Foundation
import UIKit

extension ErrorHandleableProtocol where Self: UIViewController {
    
    func showError(title: String = "Alerta!", message:String = "Erro no sistema", description: String = "Erro Genérico", error: Error? = nil) {
        ErrorAlert.shared.showErrorAlert(title, message: message, onController: self)
    }
    
}
