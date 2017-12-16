//
//  UserDataViewController+UICollectionViewDelegateFlowLayout.swift
//  HandsApp
//
//  Created by Robson Moreira on 14/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import Foundation
import UIKit

extension UserDataViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.size.width, height: 116);
    }
    
}
