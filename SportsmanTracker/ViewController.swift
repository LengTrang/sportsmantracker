//
//  ViewController.swift
//  SportsmanTracker
//
//  Created by Leng Trang on 6/26/16.
//  Copyright © 2016 Sportsman Tracker. All rights reserved.
//

import UIKit
import Mapbox

class ViewController: UIViewController {

    @IBOutlet var mapView: MGLMapView!
    @IBOutlet weak var searchBar: UIView!
    @IBOutlet weak var vertBar: UIView!
    @IBOutlet weak var addAnnot: UIView!
    @IBOutlet weak var addAnnotButton: UIButton!
    @IBOutlet weak var centerUser: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.searchBar.layer.cornerRadius = 10
        self.vertBar.layer.cornerRadius = 2
        self.addAnnot.layer.cornerRadius = 37.5
        
        self.centerUser.layer.cornerRadius = self.addAnnot.layer.cornerRadius
        
        let point = MGLPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: 45.52258, longitude: -122.6732)
        point.title = "Voodoo Doughnut"
        point.subtitle = "22 SW 3rd Avenue Portland Oregon, U.S.A."
        
        mapView.addAnnotation(point)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func mapView(mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        // Always try to show a callout when an annotation is tapped.
        return true
    }
    
    @IBAction func addAnnotation(sender: AnyObject) {
        print("Testing")
    }
    
    @IBAction func userCenter(sender: AnyObject) {
        print("Center")

        self.mapView.setCenterCoordinate((self.mapView.userLocation?.coordinate)!, animated: true)
        print("*** \(self.mapView.userLocation?.coordinate)")
    }
    
}

