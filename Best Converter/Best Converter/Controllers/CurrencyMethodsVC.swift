//
//  CurrencyMethodsVC.swift
//  Best Converter
//
//  Created by Asma on 14/11/2021.
//

import UIKit

class CurrencyMethodsVC: UIViewController {
    
    
    var typeSelected:ConversionCurrency? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toCurrency" {
            let vc = segue.destination as! ConversionFromVC
            vc.typeSelected = typeSelected
        } else {
            
        }
    }
    
    @IBAction func toSAR(_ sender: UIButton) {
        typeSelected = .SAR
        performSegue(withIdentifier: "toCurrency", sender: nil)
    }
    @IBAction func toUsd(_ sender: UIButton) {
        typeSelected = .USD
        performSegue(withIdentifier: "toCurrency", sender: nil)
    }
    @IBAction func toAud(_ sender: UIButton) {
        typeSelected = .AUD
        performSegue(withIdentifier: "toCurrency", sender: nil)
    }
    @IBAction func toEuro(_ sender: UIButton) {
        typeSelected = .Euro
        performSegue(withIdentifier: "toCurrency", sender: nil)
    }
    
    
    
    
    
    
    
    
    
    
}
