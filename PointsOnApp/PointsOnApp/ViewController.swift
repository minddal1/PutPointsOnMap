//
//  ViewController.swift
//  PointsOnApp
//
//  Created by admin on 29/06/2020.
//  Copyright © 2020 Blank. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    // rådhuspladsen koordinater
    // 55.676389°, 12.568056°

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
    }
    
    func addAnotherNotation() {
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 55.676389, longitude: 12.568056)
        annotation.title = "This place"
        mapView.addAnnotation(annotation)
        
        print("Number 2")
    }
    
     func addAnnotation() {
        
        let parkAnnotation = MKPointAnnotation()
        parkAnnotation.coordinate = CLLocationCoordinate2D(latitude: 55.676575, longitude: 13.568056)
          parkAnnotation.title = "Park"
        mapView.addAnnotation(parkAnnotation)
        
        
        
        let region = MKCoordinateRegion(center: parkAnnotation.coordinate, latitudinalMeters: 100000, longitudinalMeters: 100000)
        mapView.setRegion(region, animated: true)
              
        
        print("added notations1")
        
        
    }
    
    func setPinUsingMKPointAnnotation(location: CLLocationCoordinate2D){
       let annotation = MKPointAnnotation()
       annotation.coordinate = location
       annotation.title = "Here"
       annotation.subtitle = "Device Location"
       let coordinateRegion = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 800, longitudinalMeters: 800)
       mapView.setRegion(coordinateRegion, animated: true)
       mapView.addAnnotation(annotation)
        
        print("FUNC PRESSED")
    }

    @IBAction func btnTapped(_ sender: Any) {
        addAnnotation()
        addAnotherNotation()
        
        
    }
    

    

}

