//
//  MapsViewController.swift
//  HandsApp
//
//  Created by Robson Moreira on 16/12/17.
//  Copyright © 2017 Robson Moreira. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapsViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var latitude: Double?
    var longitude: Double?
    var address: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addBackButton()
        self.openMapForPlace()
    }
    
    func addBackButton() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        let _ = self.navigationController?.popViewController(animated: true)
    }
    
    func openMapForPlace() {
        let location = CLLocationCoordinate2DMake(self.latitude!, self.longitude!)
        
        let span = MKCoordinateSpanMake(0.002, 0.002)
        let region = MKCoordinateRegionMake(location, span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = address!
        mapView.addAnnotation(annotation)
    }
    
}
