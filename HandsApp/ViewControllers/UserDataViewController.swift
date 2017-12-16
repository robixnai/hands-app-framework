//
//  ViewController.swift
//  HandsApp
//
//  Created by Robson Moreira on 10/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation
import SVProgressHUD

class UserDataViewController: BaseViewController {
    
    @IBOutlet weak var userDataCollectionView: UICollectionView!
    
    var dataProvider: UserDataDataProvider?
    var viewModel: UserDataViewModel?
    
    var page: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userDataCollectionView.register(UINib(nibName: "UserDataCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "UserDataCollectionViewCell")
        self.dataProvider = UserDataDataProvider()
        self.dataProvider?.delegate = self
        self.userDataCollectionView.dataSource = self as UICollectionViewDataSource
        self.userDataCollectionView.delegate = self
        
        SVProgressHUD.show()
        self.dataProvider?.getUserData(page: page)
        
        self.userDataCollectionView.beginInfiniteScroll(true)
        self.userDataCollectionView.addInfiniteScroll { (collectionView) -> Void in
            collectionView.performBatchUpdates({ () -> Void in
                self.page = self.page + 1
                self.dataProvider?.getUserData(page: self.page)
            }, completion: { (finished) -> Void in
                collectionView.finishInfiniteScroll()
            });
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem
        
        let userDataDetail: UserDataDetailViewController = segue.destination as! UserDataDetailViewController
        userDataDetail.viewModel = sender as? UserDataDetailViewModel
    }
        
}

