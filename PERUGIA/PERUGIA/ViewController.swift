//
//  ViewController.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 02/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func Drawingsupplise(_ sender: Any) {
        let alert = UIAlertController (title: "Sorry ", message: "The service is not available , it will be available soon", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
            
            
            
        
}
            
            

