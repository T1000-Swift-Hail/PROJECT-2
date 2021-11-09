//
//  WelcomeScreen.swift
//  Project-2
//
//  Created by Majed Alshammari on 04/04/1443 AH.
//

import UIKit

class WelcomeScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func goToRoomSelection(_ sender: UIButton) {
        performSegue(withIdentifier: "RoomSelection", sender: nil)
    }
    


}
