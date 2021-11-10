//
//  HomeTabBarViewController.swift
//  Metalic
//
//  Created by Anas Hamad on 04/04/1443 AH.
//

import UIKit

class HomeTabBarViewController: UIViewController {
 
    @IBOutlet var rackButton: UIButton!
    @IBOutlet var impllerButton: UIButton!
    @IBOutlet var helicalButton: UIButton!
    @IBOutlet var SpurButton: UIButton!
    @IBOutlet var wormButton: UIButton!
    
    var imageSelected: UIImage?
    var textSelected :String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let image = UIImage(named: "Rack") {
//            rackButton.setImage(image, for: .normal)}
//        if let image = UIImage(named: "impller") {
//            impllerButton.setImage(image, for: .normal)}
//        if let image = UIImage(named: "spure") {
//            SpurButton.setImage(image, for: .normal)}
//        if let image = UIImage(named: "worm") {
//            wormButton.setImage(image, for: .normal)}
//        if let image = UIImage(named: "helical") {
//            helicalButton.setImage(image, for: .normal)}
       
        
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! DifinationView
        vc.imageSelected = imageSelected
        vc.TextSelected = textSelected
        
    }
    
    @IBAction func SpurButton(_ sender: Any) {
        
        imageSelected = UIImage(named: "spurecad")
        textSelected = "Spur gears or straight-cut gears are the simplest type of gear. They consist of a cylinder or disk with teeth projecting radially. Viewing the gear at 90 degrees from the shaft length (side on) the tooth faces are straight and aligned parallel to the axis of rotation. Looking down the length of the shaft, a tooth's cross section is usually not triangular. Instead of being straight (as in a triangle) the sides of the cross section have a curved form (usually involute and less commonly cycloidal) to achieve a constant drive ratio. Spur gears gears mesh together correctly only if fitted to parallel shafts.[1] No axial thrust is created by the tooth loads"
        performSegue(withIdentifier: "Difenition", sender: nil)
        
    }
    @IBAction func ReckButton(_ sender: Any) {
        
        imageSelected = UIImage(named: "RackCad")
        textSelected = "Rack and pinion define: :is a type of linear actuator that comprises a circular gear (the pinion) engaging a linear gear (the rack) application: automotive market factory in production line shape: bar shaped gear"
        performSegue(withIdentifier: "Difenition", sender: nil)
    }
    
    @IBAction func helicalButton(_ sender: Any) {
        imageSelected = UIImage(named: "HelicalCad")
        textSelected = "Helical : gears are similar to spur gears except that their teeth are cut at an angle plastic industries elevators compressors.angle cut teath"
        performSegue(withIdentifier: "Difenition", sender: nil)
        
    }
    @IBAction func wormButton(_ sender: Any) {
        
        imageSelected = UIImage(named: "WormCad")
        textSelected = "Worm Gear define: A worm drive is a gear arrangement in which a worm (which is a gear in the form of a screw) meshes with a worm wheel (which is similar in appearance to a spur gear). The two elements are also called the worm screw and worm gear , application:  presses, rolling mills, conveying engineering, shape: which is a gear in the form of a screw "
        
        performSegue(withIdentifier: "Difenition", sender: nil)
    }
    
    @IBAction func impllerButton(_ sender: Any) {
        
        imageSelected = UIImage(named: "ImpllerCad")
        textSelected = "An impeller is a rotating component of a centrifugal pump that accelerates fluid outward from the center of rotation, thus transferring energy from the motor that drives the pump to the fluid being pumped."
        performSegue(withIdentifier: "Difenition", sender: nil)
    }
}
