//
//  Map.swift
//  Marssai
//
//  Created by Huda N S on 05/04/1443 AH.
//

import UIKit
import MapKit

class Map: UIViewController {

    @IBOutlet var mapViwe: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
    //Add website events
    let initialLoc = CLLocation(latitude: 27.494047 , longitude:41.674215 )
        setStartingLocation(location: initialLoc, distance: 1000)
        addAnnotation()
    }
    
    //Define the area
    func setStartingLocation(location : CLLocation , distance : CLLocationDistance){
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
        mapViwe.setRegion(region, animated: true)
        
        //Determine the appearance on the screen
        mapViwe.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
        
        //Define zoom restrictions
        let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 3000)
        mapViwe.setCameraZoomRange(zoomRange, animated: true)
    }
    
    //To put the pin on the map
    func addAnnotation(){
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2D(latitude:27.494047 , longitude:41.674215 )
        pin.title = "Marssai"
        pin.subtitle = "Marssai Resturant"
        mapViwe.addAnnotation(pin)
    }
}
