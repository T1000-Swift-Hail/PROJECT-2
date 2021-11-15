//
//  Location1ViewController.swift
//  saudi elctri city company
//
//  Created by Mohammed Abdullah on 06/04/1443 AH.
//

import UIKit
import MapKit
class Location1ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapOutLet: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let latitude : CLLocationDegrees = 21.314438
        let longtitude : CLLocationDegrees = 40.4324153
        
        let lanDelta : CLLocationDegrees = 0.05
        let longDelta : CLLocationDegrees = 0.05
        
        let span = MKCoordinateSpan(latitudeDelta: lanDelta, longitudeDelta: longDelta)
        let cooridnates = CLLocationCoordinate2D(latitude: latitude, longitude: longtitude)
        let region = MKCoordinateRegion(center: cooridnates, span: span)
        
        mapOutLet.setRegion(region, animated: true)
        
        let newAnnotation = MKPointAnnotation()
        newAnnotation.title = "My Favorite Place"
        newAnnotation.subtitle = "Will Be Here Tomorwe"
        newAnnotation.coordinate = cooridnates
        mapOutLet.addAnnotation(newAnnotation)
        
        let uilpgr = UILongPressGestureRecognizer(target: self, action: #selector(longPressGeuster(gusterRecognizer:)))
        
        uilpgr.minimumPressDuration = 1
        mapOutLet.addGestureRecognizer(uilpgr)
        
        
        
    }
    
    
    @objc func longPressGeuster(gusterRecognizer : UIGestureRecognizer) {
        
        let touchPoint = gusterRecognizer.location(in: self.mapOutLet)
        let coordinte = mapOutLet.convert(touchPoint, toCoordinateFrom: self.mapOutLet)
        
        let newUserAnnotation = MKPointAnnotation()
        newUserAnnotation.title = "My Favorite Place"
        newUserAnnotation.subtitle = "Will Be Here Tomorwe"
        newUserAnnotation.coordinate = coordinte
        mapOutLet.addAnnotation(newUserAnnotation)
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}



