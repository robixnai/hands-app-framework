//
//  ErrorHandleable.swift
//  HandsApp
//
//  Created by Robson Moreira on 15/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import Foundation

public protocol ErrorHandleableProtocol {
    
    func showError(title: String, message: String, description: String, error: Error?)
    
}
