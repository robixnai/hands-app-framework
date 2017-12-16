//
//  GenericDataProvider.swift
//  HandsApp
//
//  Created by Robson Moreira on 13/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import Foundation

class DataProviderManager<T, S> {
    var delegate: T?
    var viewModel: S?
}
