//
//  UserDataViewController+UICollectionViewDataSource.swift
//  HandsApp
//
//  Created by Robson Moreira on 14/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import Foundation
import UIKit

extension UserDataViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.viewModel?.countOfUserData ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let _cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UserDataCollectionViewCell", for: indexPath) as? UserDataCollectionViewCell
        self.viewModel?.setupCurrentUserData(index: indexPath.row)
        _cell?.setupCell(vm: self.viewModel)
        return _cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "SegueUserDataDetail", sender: UserDataDetailViewModel(userData: self.viewModel!.getUserData(index: indexPath.row)))
    }
    
}
