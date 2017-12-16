//
//  LocationDataProviderProtocol.swift
//  HandsApp
//
//  Created by Robson Moreira on 16/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import Foundation

protocol LocationDataProviderProtocol: GenericDataProviderProtocol {
    
    func errorGps(_ provider: GenericDataProviderProtocol?, error: NSError)
    
}
