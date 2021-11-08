//
//  ConversionFromMeter.swift
//  Best Converter
//
//  Created by Asma on 08/11/2021.
//

import UIKit

class ConversionFromMeter: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    var conversionUnit = ConversionUnit.m
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldUnitMeter.delegate = self
        
        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
                let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                view.addGestureRecognizer(tap)

    }
    
    @IBOutlet weak var unitMeterLabel: UILabel!
    @IBOutlet weak var textFieldUnitMeter: UITextField!
    @IBOutlet weak var segmentUnitMeter: UISegmentedControl!
    
    
    @IBAction func segmentUnitMeterAction(_ sender: UISegmentedControl) {
        textFieldUnitMeter.text = ""
        
        switch segmentUnitMeter.selectedSegmentIndex {
        case 0:
            conversionUnit = .km
            unitMeterLabel.text = "0.0 km"
        case 1:
            conversionUnit = .cm
            unitMeterLabel.text = "0.0 cm"
        default:
            conversionUnit = .inch
            unitMeterLabel.text = "0.0 inch"
        }
        
    }
    
    func convertToKm( meter: Double) -> Double {
        return meter * 0.001
    }
    func convertToCm( meter: Double) -> Double {
        return meter * 100
    }
    func convertToInch( meter: Double) -> Double {
        return meter * 39.370078740157
    }
    
    
    
    @IBAction func textFieldUnitAction(_ sender: UITextField) {
        
        let amountUnit = Double(textFieldUnitMeter.text ?? "0.0") ?? 0.0
        
        switch conversionUnit {
        case .km:
            let convertedValue = convertToKm(meter:amountUnit)
            unitMeterLabel.text = "\(String (format: "%.6f", convertedValue)) km"
        case .cm:
            let convertedValue = convertToCm(meter: amountUnit)
            unitMeterLabel.text = "\(String (format: "%.6f", convertedValue)) cm"
        case .inch:
            let convertedValue = convertToInch(meter: amountUnit)
            unitMeterLabel.text = "\(String (format: "%.6f", convertedValue)) inch"
        case .m: break
        }
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         
        if let lessCount = textFieldUnitMeter.text?.count, lessCount < 4 {
            return true
        } else { return false }
    }
    
}
