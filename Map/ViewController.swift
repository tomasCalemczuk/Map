//
//  ViewController.swift
//  Map
//
//  Created by Tomas Calemczuk on 7/6/16.
//  Copyright © 2016 Tomi Calemczuk. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation 

class ViewController: UIViewController {
     
    
    @IBOutlet weak var map: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let location = CLLocationCoordinate2DMake(-34.603684, -58.381559)
        
        let span = MKCoordinateSpanMake(0.02, 0.02)
        
        let region = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Pizzeria"
        annotation.subtitle = "Luna Rosa"
        
        
        map.addAnnotation(annotation)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

