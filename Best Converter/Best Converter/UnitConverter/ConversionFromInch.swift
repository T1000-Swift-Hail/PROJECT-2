//
//  ConversionFromInch.swift
//  Best Converter
//
//  Created by Asma on 08/11/2021.
//

import UIKit

class ConversionFromInch: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    var conversionUnit = ConversionUnit.inch
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldUnitInch.delegate = self
        
        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
                let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                view.addGestureRecognizer(tap)

    }
    
    @IBOutlet weak var unitInchLabel: UILabel!
    @IBOutlet weak var textFieldUnitInch: UITextField!
    @IBOutlet weak var segmentUnitInch: UISegmentedControl!
    
    
    @IBAction func segmentUnitInchAction(_ sender: UISegmentedControl) {
        textFieldUnitInch.text = ""
        
        switch segmentUnitInch.selectedSegmentIndex {
        case 0:
            conversionUnit = .km
            unitInchLabel.text = "0.0 km"
        case 1:
            conversionUnit = .cm
            unitInchLabel.text = "0.0 cm"
        default:
            conversionUnit = .m
            unitInchLabel.text = "0.0 m"
        }
        
    }
    
    func convertToKm( inch: Double) -> Double {
        return inch * 0.0000254
    }
    func convertToCm( inch: Double) -> Double {
        return inch * 2.54
    }
    func convertToM( inch: Double) -> Double {
        return inch * 0.0254
    }
    
    
    
    @IBAction func textFieldUnitAction(_ sender: UITextField) {
        
        let amountUnit = Double(textFieldUnitInch.text ?? "0.0") ?? 0.0
        
        switch conversionUnit {
        case .km:
            let convertedValue = convertToKm(inch:amountUnit)
            unitInchLabel.text = "\(String (format: "%.6f", convertedValue)) km"
        case .cm:
            let convertedValue = convertToCm(inch: amountUnit)
            unitInchLabel.text = "\(String (format: "%.6f", convertedValue)) cm"
        case .m:
            let convertedValue = convertToM(inch: amountUnit)
            unitInchLabel.text = "\(String (format: "%.6f", convertedValue)) m"
        case .inch: break
        }
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         
        if let lessCount = textFieldUnitInch.text?.count, lessCount < 4 {
            return true
        } else { return false }
    }
    
}
