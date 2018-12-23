//
//  ViewController.swift
//  GoogleMapSamples
//
//  Created by Krishna Shrestha on 12/23/18.
//  Copyright © 2018 Krishna Shrestha. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
//    @IBOutlet weak var uiView: UIView!
    @IBOutlet weak var mapVIew: GMSMapView!
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 14.0)
//        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
//        uiView.addSubview(mapView)
        self.mapVIew.camera = camera
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = self.mapVIew
    }
    
    


}

