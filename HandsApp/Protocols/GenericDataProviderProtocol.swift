//
//  GenericDataProviderProtocol.swift
//  HandsApp
//
//  Created by Robson Moreira on 15/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import Foundation

protocol GenericDataProviderProtocol: class {
    
    func success(viewModel: Any)
    func errorData(_ provider: GenericDataProviderProtocol?, error: NSError)
    
}
