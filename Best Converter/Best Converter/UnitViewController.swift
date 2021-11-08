//
//  UnitViewController.swift
//  Best Converter
//
//  Created by Asma on 07/11/2021.
//

import UIKit
import Foundation

enum ConversionUnit {
    case m
    case km
}

class UnitViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    var conversionUnit = ConversionUnit.m
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldUnit.delegate = self
        
        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
                let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                view.addGestureRecognizer(tap)

    }
    
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var textFieldUnit: UITextField!
    @IBOutlet weak var segmentUnit: UISegmentedControl!
    
    
    @IBAction func segmentUnitAction(_ sender: UISegmentedControl) {
        textFieldUnit.text = ""
        
        switch segmentUnit.selectedSegmentIndex {
        case 0:
            conversionUnit = .m
            unitLabel.text = "0.0 km"
        case 1:
            conversionUnit = .km
            unitLabel.text = "0.0 m"
        default:
            conversionUnit = .m
            unitLabel.text = "0.0 km"
        }
        
    }
    
    func convertToM( kilometer: Double) -> Double {
        return kilometer * 1000
    }
    func convertToKm( meter: Double) -> Double {
        return meter * 0.001
    }
    
    
    
    @IBAction func textFieldUnitAction(_ sender: UITextField) {
        
        let amountUnit = Double(textFieldUnit.text ?? "0.0") ?? 0.0
        
        switch conversionUnit {
        case .m:
            let convertedValue = convertToM(kilometer: amountUnit)
            unitLabel.text = "\(String (format: "%.4f", convertedValue)) km"
        case .km:
            let convertedValue = convertToKm(meter: amountUnit)
            unitLabel.text = "\(String (format: "%.4f", convertedValue)) m"
        }
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         
        if let lessCount = textFieldUnit.text?.count, lessCount < 4 {
            return true
        } else { return false }
    }
    
}
