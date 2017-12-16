//
//  UserDataDetailViewController.swift
//  HandsApp
//
//  Created by Robson Moreira on 15/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import UIKit
import SVProgressHUD

class UserDataDetailViewController: BaseViewController {
    
    @IBOutlet weak var imageViewOs: UIImageView!
    @IBOutlet weak var labelIdDevice: UILabel!
    @IBOutlet weak var labelDeviceModel: UILabel!
    @IBOutlet weak var labelBatteryState: UILabel!
    @IBOutlet weak var labelBattery: UILabel!
    @IBOutlet weak var viewAppInstalled: UIView!
    @IBOutlet weak var imageViewAppsInstalled: UIImageView!
    @IBOutlet weak var scrollViewApps: UIScrollView!
    @IBOutlet weak var labelSizeAppInstalled: UILabel!
    @IBOutlet weak var labelArrival: UILabel!
    @IBOutlet weak var labelDeparture: UILabel!
    @IBOutlet weak var viewHome: UIView!
    @IBOutlet weak var viewWork: UIView!
    @IBOutlet weak var viewPlaces: UIView!
    @IBOutlet weak var labelCategorie: UILabel!
    @IBOutlet weak var labelVenueName: UILabel!
    @IBOutlet weak var labelVenueTotalTime: UILabel!
    @IBOutlet weak var labelPrecision: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    @IBOutlet weak var labelCityState: UILabel!
    @IBOutlet weak var labelCountry: UILabel!
    
    @IBOutlet weak var constraintViewApps: NSLayoutConstraint!
    @IBOutlet weak var constraintApps: NSLayoutConstraint!
    
    var dataProvider: LocationDataProvider?
    var viewModel: UserDataDetailViewModel?
    
    private var labelY: Int = 0
    private var keyboardArrowDow: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataProvider = LocationDataProvider()
        self.dataProvider?.delegate = self
        
        self.navigationItem.title = viewModel!.title
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        self.addBorderInView()
        self.bindElements()
        self.setActionsInImageView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.labelAddress.text = self.viewModel?.address
        self.labelCityState.text = "\(String(describing: self.viewModel!.city!)) - \(String(describing: self.viewModel!.state!))"
        self.labelCountry.text = self.viewModel?.country
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let backItem = UIBarButtonItem()
        backItem.title = ""
        backItem.tintColor = UIColor(red:1.00, green:0.34, blue:0.13, alpha:1.0)
        navigationItem.backBarButtonItem = backItem
        
        let location: NSDictionary = sender as! NSDictionary
        let maps: MapsViewController = segue.destination as! MapsViewController
        maps.latitude = location.value(forKey: "latitude") as? Double
        maps.longitude = location.value(forKey: "longitude") as? Double
        maps.address = location.value(forKey: "address") as? String
    }
    
    @objc func imageViewAppsInstalled(tapGestureRecognizer: UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.2, delay: 0.3, options: UIViewAnimationOptions.curveEaseIn, animations: { () -> Void in
            self.imageViewAppsInstalled.alpha = 0;
            self.viewAppInstalled.alpha = 0;
            self.scrollViewApps.alpha = 0;
        }, completion: { (finished) -> Void in
            self.imageViewAppsInstalled.alpha = 1;
            self.viewAppInstalled.alpha = 1;
            self.scrollViewApps.alpha = 1;
            self.labelSizeAppInstalled.isHidden = self.keyboardArrowDow
            self.scrollViewApps.isHidden = !self.keyboardArrowDow
            self.constraintViewApps.constant = CGFloat((self.keyboardArrowDow) ? (self.labelY + 90) - 21 : 90)
            let imageResources = (self.keyboardArrowDow) ? "ic_keyboard_arrow_up_24dp" : "ic_keyboard_arrow_down_24dp"
            self.imageViewAppsInstalled.image = UIImage(named: imageResources)
            self.keyboardArrowDow = !self.keyboardArrowDow
        })
    }
    
    @objc func viewHome(tapGestureRecognizer: UITapGestureRecognizer) {
        let location: NSDictionary = [
            "latitude": self.viewModel?.homeLatitude as Any,
            "longitude": self.viewModel?.homeLongitude as Any,
            "address": "Casa"
        ]
        performSegue(withIdentifier: "SegueMaps", sender: location)
    }
    
    @objc func viewWork(tapGestureRecognizer: UITapGestureRecognizer) {
        let location: NSDictionary = [
            "latitude": self.viewModel?.workLatitude as Any,
            "longitude": self.viewModel?.workLongitude as Any,
            "address": "Tranalho"
        ]
        performSegue(withIdentifier: "SegueMaps", sender: location)
    }
    
    @objc func viewPlaces(tapGestureRecognizer: UITapGestureRecognizer) {
        let location: NSDictionary = [
            "latitude": self.viewModel?.venueLatitude as Any,
            "longitude": self.viewModel?.venueLongitude as Any,
            "address": self.viewModel?.address as Any
        ]
        performSegue(withIdentifier: "SegueMaps", sender: location)
    }
    
    @IBAction func buttonUpdateLocation(_ sender: UIButton) {
        SVProgressHUD.show()
        self.dataProvider?.getLocation(viewModel: self.viewModel)
    }
    
    private func addBorderInView() {
        self.viewHome.layer.borderWidth = 1
        self.viewHome.layer.borderColor = UIColor.init(red:222/255.0, green:225/255.0, blue:227/255.0, alpha: 1.0).cgColor
        self.viewWork.layer.borderWidth = 1
        self.viewWork.layer.borderColor = UIColor.init(red:222/255.0, green:225/255.0, blue:227/255.0, alpha: 1.0).cgColor
    }
    
    private func bindElements() {
        self.imageViewOs.image = self.viewModel?.osImage
        self.labelIdDevice.text = self.viewModel?.id
        self.labelDeviceModel.text = self.viewModel?.deviceModel
        self.labelBatteryState.text = String(describing: self.viewModel!.batteryState!)
        self.labelBattery.text = "\(String(describing: self.viewModel!.batteryPercentage!))%"
        self.showHiddenAppInstalled()
        self.labelArrival.text = self.viewModel?.arrival
        self.labelDeparture.text = self.viewModel?.departure
        self.labelCategorie.text = self.viewModel?.categorie
        self.labelVenueName.text = self.viewModel?.venueName
        self.labelVenueTotalTime.text = String(describing: self.viewModel!.venueTotalTime!)
        self.labelPrecision.text = "\(String(describing: self.viewModel!.precision!))%"
    }
    
    private func showHiddenAppInstalled() {
        if self.viewModel!.amountInstalledApps! > 0 {
            self.labelSizeAppInstalled.isHidden = false
            self.scrollViewApps.isHidden = true
            self.constraintViewApps.constant = 90
            
            self.labelSizeAppInstalled.text = "\(String(describing: self.viewModel!.amountInstalledApps!)) apps instalados"
            
            for text in (self.viewModel?.istInstalledApps)! {
                let label = UILabel(frame: CGRect(x: 17, y: labelY, width: 279, height: 21))
                label.text = "- \(text)"
                label.textColor = UIColor.darkGray
                label.font = label.font.withSize(14)
                self.scrollViewApps.addSubview(label)
                
                labelY = labelY + 21
            }
        } else {
            self.viewAppInstalled.isHidden = true
            self.scrollViewApps.isHidden = true
            self.constraintApps.constant = self.constraintApps.constant - self.viewAppInstalled.frame.height - 8.0
        }
    }
    
    private func setActionsInImageView() {
        let tapGestureRecognizerAppsInstalled = UITapGestureRecognizer(target: self, action: #selector(imageViewAppsInstalled(tapGestureRecognizer:)))
        imageViewAppsInstalled.isUserInteractionEnabled = true
        imageViewAppsInstalled.addGestureRecognizer(tapGestureRecognizerAppsInstalled)
        
        let tapGestureRecognizerHome = UITapGestureRecognizer(target: self, action: #selector(viewHome(tapGestureRecognizer:)))
        viewHome.isUserInteractionEnabled = true
        viewHome.addGestureRecognizer(tapGestureRecognizerHome)
        
        let tapGestureRecognizerWork = UITapGestureRecognizer(target: self, action: #selector(viewWork(tapGestureRecognizer:)))
        viewWork.isUserInteractionEnabled = true
        viewWork.addGestureRecognizer(tapGestureRecognizerWork)
        
        let tapGestureRecognizerPlaces = UITapGestureRecognizer(target: self, action: #selector(viewPlaces(tapGestureRecognizer:)))
        viewPlaces.isUserInteractionEnabled = true
        viewPlaces.addGestureRecognizer(tapGestureRecognizerPlaces)
    }
    
}
