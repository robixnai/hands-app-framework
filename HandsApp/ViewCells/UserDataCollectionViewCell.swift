//
//  UserDataCollectionViewCell.swift
//  HandsApp
//
//  Created by Robson Moreira on 14/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import UIKit

class UserDataCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var labelDeviceModel: UILabel!
    @IBOutlet weak var labelDeviceId: UILabel!
    @IBOutlet weak var labelOsVersion: UILabel!
    @IBOutlet weak var imageViewBatteryPercentage: UIImageView!
    @IBOutlet weak var labelBatteryPercentage: UILabel!
    @IBOutlet weak var imageViewOs: UIImageView!
    @IBOutlet weak var labelOsName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(vm: UserDataViewModel?) {
        if let _vm = vm {
            self.labelDeviceModel.text = _vm.deviceModel
            self.labelDeviceId.text = _vm.deviceId
            self.labelOsVersion.text = _vm.osVersion
            self.imageViewBatteryPercentage.image = _vm.batteryPercentageImage
            self.labelBatteryPercentage.text = "\(String(describing: _vm.batteryPercentage!))%"
            self.imageViewOs.image = _vm.osImage
            self.labelOsName.text = _vm.osName
        }
    }

}
