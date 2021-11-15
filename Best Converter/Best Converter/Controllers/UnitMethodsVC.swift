//
//  UnitMethodsVC.swift
//  Best Converter
//
//  Created by Asma on 14/11/2021.
//

import UIKit

class UnitMethodsVC: UIViewController {

    
    var typeSelected:ConversionUnit? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Navigation
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toUnit" {
            let vc = segue.destination as! ConversionFromUnit
            vc.typeSelected = typeSelected
        } else {
            
        }
    }
    
    
    @IBAction func toMeter(_ sender: UIButton) {
        typeSelected = .m
        performSegue(withIdentifier: "toUnit", sender: nil)
    }
    
    @IBAction func toKilometer(_ sender: UIButton) {
        typeSelected = .km
        performSegue(withIdentifier: "toUnit", sender: nil)
    }
    
    @IBAction func toCentimeter(_ sender: UIButton) {
        typeSelected = .cm
        performSegue(withIdentifier: "toUnit", sender: nil)
    }
   
    @IBAction func toInch(_ sender: UIButton) {
        typeSelected = .inch
        performSegue(withIdentifier: "toUnit", sender: nil)
    }
    
    
    
}

