//
//  BaseViewController.swift
//  HandsApp
//
//  Created by Robson Moreira on 13/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController, ErrorHandleableProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = false
        self.view.backgroundColor = UIColor(red:1.00, green:0.34, blue:0.13, alpha:1.0)
        self.navigationController?.navigationBar.barTintColor = UIColor(red:1.00, green:0.34, blue:0.13, alpha:1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }
    
}
