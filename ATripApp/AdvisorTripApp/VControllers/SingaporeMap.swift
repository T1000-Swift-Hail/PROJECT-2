
//  MapViewController.swift
//  AdvisorTripApp
//
//  Created by Hind Alharbi on 11/9/21.
//

import UIKit
import MapKit
import CoreLocation

class SingaporeMap: UIViewController {
    // singapore map to diplay places to visit
    var check = "NY"
    @IBOutlet weak var singaporeMapOutlet: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let SingaporePlaces = [Countries(name: "Gardens by the Bay".locatized, lattitude: 1.2814077748683341, longtitude:  103.86363448117585), Countries(name: "Singapore Botanic Gardens".locatized, lattitude: 1.3139381604049334, longtitude: 103.815905429246742), Countries(name: "Singapore Zoo".locatized, lattitude: 1.4045630112311152, longtitude: 103.7930229973641), Countries(name: "Sands Skypark Observation Deck".locatized, lattitude: 1.2851709786397492, longtitude: 103.86100779736404), Countries(name: "Cloud Forest".locatized, lattitude: 1.2840929480452936, longtitude: 103.86607749921215)]
        
        let initalLoc = CLLocation(latitude: 1.2814077748683341, longitude: 103.86363448117585)
        setStartingLocation(location: initalLoc, distance: 30000)
addAnnotation(places: SingaporePlaces)
    }
    
    func setStartingLocation(location: CLLocation, distance: CLLocationDistance){
        
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
        singaporeMapOutlet.setRegion(region, animated: true)
      singaporeMapOutlet.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
    }
    
    func addAnnotation(places: [Countries]){
        for place in places {
            let pin = MKPointAnnotation()
            pin.title = place.name
            pin.subtitle = place.name
            pin.coordinate = CLLocationCoordinate2D(latitude:place.lattitude, longitude: place.longtitude)
            singaporeMapOutlet.addAnnotation(pin)
        }
    }
}







   
    














