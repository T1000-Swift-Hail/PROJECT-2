//
//  SartQuizViewController.swift
//  Abjd Test
//
//  Created by noyer altamimi on 03/04/1443 AH.
//

import UIKit

class SartQuizViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //for start button.
    @IBAction func startquizzz() {
        performSegue(withIdentifier: "questionsPage", sender: nil)
        
    }
    
}
