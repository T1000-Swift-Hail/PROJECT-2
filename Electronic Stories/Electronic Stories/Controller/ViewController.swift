//
//  ViewController.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 02/04/1443 AH.
//

import UIKit


enum Suges:String {

    case SecondViewController = "Second"
//    case Third = "Third"
//
//
}

class ViewController: UIViewController {

    var sectionSelected = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }

}
    
extension String {
    var localized :String {
    return NSLocalizedString(self, comment: "")
    }}

