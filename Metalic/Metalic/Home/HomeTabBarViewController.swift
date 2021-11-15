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
    @IBOutlet var spurButton: UIButton!
    @IBOutlet var wormButton: UIButton!
    var imageSelected: UIImage?
    var textSelected :String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.hidesBackButton = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! DifinationView
        vc.imageSelected = imageSelected
        vc.TextSelected = textSelected
        
    }
    @IBAction func spurButton(_ sender: Any) {
        
        imageSelected = UIImage(named: "spurecad")
        textSelected = NSLocalizedString("Spur gears or straight-cut gears are the simplest type of gear. They consist of a cylinder or disk with teeth projecting radially. Viewing the gear at 90 degrees from the shaft length (side on) the tooth faces are straight and aligned parallel to the axis of rotation. Looking down the length of the shaft, a tooth's cross section is usually not triangular. Instead of being straight (as in a triangle) the sides of the cross section have a curved form (usually involute and less commonly cycloidal) to achieve a constant drive ratio. Spur gears gears mesh together correctly only if fitted to parallel shafts.[1] No axial thrust is created by the tooth loads", comment: "")
        performSegue(withIdentifier: "Difenition", sender: nil)
        
    }
    @IBAction func reckButton(_ sender: Any) {
        
        imageSelected = UIImage(named: "RackCad")
        textSelected = NSLocalizedString("Rack and pinion define: :is a type of linear actuator that comprises a circular gear (the pinion) engaging a linear gear (the rack) application: automotive market factory in production line shape: bar shaped gear", comment: "")
        performSegue(withIdentifier: "Difenition", sender: nil)
        
    }
    @IBAction func helicalButton(_ sender: Any) {
        imageSelected = UIImage(named: "HelicalCad")
        textSelected = NSLocalizedString("Helical : gears are similar to spur gears except that their teeth are cut at an angle plastic industries elevators compressors.angle cut teath", comment: "")
        performSegue(withIdentifier: "Difenition", sender: nil)
        
    }
    @IBAction func wormButton(_ sender: Any) {
        
        imageSelected = UIImage(named: "WormCad")
        textSelected = NSLocalizedString("Worm Gear define: A worm drive is a gear arrangement in which a worm (which is a gear in the form of a screw) meshes with a worm wheel (which is similar in appearance to a spur gear). The two elements are also called the worm screw and worm gear , application:  presses, rolling mills, conveying engineering, shape: which is a gear in the form of a screw", comment: "")
        performSegue(withIdentifier: "Difenition", sender: nil)
        
    }
    @IBAction func impllerButton(_ sender: Any) {
        
        imageSelected = UIImage(named: "ImpllerCad")
        textSelected = NSLocalizedString("An impeller is a rotating component of a centrifugal pump that accelerates fluid outward from the center of rotation, thus transferring energy from the motor that drives the pump to the fluid being pumped.", comment: "")
        performSegue(withIdentifier: "Difenition", sender: nil)
    }
}
