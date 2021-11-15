
//
//  MapViewController.swift
//  AdvisorTripApp
//
//  Created by Hind Alharbi on 11/9/21.
//

import UIKit
import MapKit
import CoreLocation

class MapViewControlle: UIViewController {
    
    var check = "NY"
    
    @IBOutlet weak var mapOutlet: MKMapView!
    
    // display places on the map
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let places = [Countries(name: "NYC".locatized, lattitude: 40.71380627944659, longtitude:  -73.9989379757769), Countries(name: "Centeral Park".locatized, lattitude: 40.781174229456276, longtitude: -73.96664435646102), Countries(name: "Statue of Liberty National Monument".locatized, lattitude: 40.70547837282441, longtitude: -74.05249632231784), Countries(name: "Brooklyn Bridge".locatized, lattitude: 40.706272969516704, longtitude: -73.99691768954771), Countries(name: "Top of The Rock".locatized, lattitude: 40.75956149847025, longtitude: -73.97941435969796)]
        
        let initalLoc = CLLocation(latitude: 40.71380627944659, longitude: -73.9989379757769)
        setStartingLocation(location: initalLoc, distance: 30000)
addAnnotation(places: places)
    }
    
    func setStartingLocation(location: CLLocation, distance: CLLocationDistance){
        
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
        mapOutlet.setRegion(region, animated: true)
        mapOutlet.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
       //let zoomR = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 30000)
       // mapOutlet.setCameraZoomRange(zoomR, animated: true)
        
    }
    
    func addAnnotation(places: [Countries]){
        for place in places {
            let pin = MKPointAnnotation()
            pin.title = place.name
            pin.subtitle = place.name
            pin.coordinate = CLLocationCoordinate2D(latitude:place.lattitude, longitude: place.longtitude)
            mapOutlet.addAnnotation(pin)
        }
    }
}







   
    














