//
//  ViewController.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 02/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    enum Suges:String {
        
        case SecondViewController = "Second"
        case Third = "Third"
        
        
    }
    var sectionSelected = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        
    }
    @IBAction func phone(_ sender: UIButton) {
        sectionSelected = 0
        performSegue(withIdentifier: "toProducts", sender: nil)
        
        
    }
    
    @IBAction func smartWatches(_ sender: UIButton) {
        sectionSelected = 1
        performSegue(withIdentifier: "toProducts", sender: nil)
    }
    
    
}

