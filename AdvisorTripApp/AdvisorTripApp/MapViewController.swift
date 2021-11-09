//
//  MapViewController.swift
//  AdvisorTripApp
//
//  Created by Hind Alharbi on 11/9/21.
//

import UIKit
import MapKit
class MapViewControlle: UIViewController {
    
    @IBOutlet weak var mapOutlet: MKMapView!
    
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationServices()
        //fetchStadiumsOnMap([Stadium])
       let stadiums = [Stadium(name: "Emirates Stadium", lattitude: 51.5549, longtitude: -0.108436),
        Stadium(name: "Stamford Bridge", lattitude: 51.4816, longtitude: -0.191034),
        Stadium(name: "White Hart Lane", lattitude: 51.6033, longtitude: -0.065684),
        Stadium(name: "Olympic Stadium", lattitude: 51.5383, longtitude: -0.016587),
        Stadium(name: "Old Trafford", lattitude: 53.4631, longtitude: -2.29139),
        Stadium(name: "Anfield", lattitude: 53.4308, longtitude: -2.96096)]
        
    }
    
    func fetchStadiumsOnMap(_ stadiums: [Stadium]) {
      for stadium in stadiums {
        let annotations = MKPointAnnotation()
        annotations.title = stadium.name
        annotations.coordinate = CLLocationCoordinate2D(latitude:
          stadium.lattitude, longitude: stadium.longtitude)
          mapOutlet.addAnnotation(annotations)
      }
    }

    func checkLocationServices() {
      if CLLocationManager.locationServicesEnabled() {
        checkLocationAuthorization()
      } else {
        // Show alert letting the user know they have to turn this on.
      }
    }
    
    func checkLocationAuthorization() {
      switch CLLocationManager.authorizationStatus() {
      case .authorizedWhenInUse:
          mapOutlet.showsUserLocation = true
       case .denied: // Show alert telling users how to turn on permissions
       break
      case .notDetermined:
        locationManager.requestWhenInUseAuthorization()
          mapOutlet.showsUserLocation = true
      case .restricted: // Show an alert letting them know what’s up
       break
      case .authorizedAlways:
       break
      }
    }
    
}

struct Stadium {
  var name: String
  var lattitude: CLLocationDegrees
  var longtitude: CLLocationDegrees
}


