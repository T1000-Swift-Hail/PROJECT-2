//
//  ConversionFromKilometer.swift
//  Best Converter
//
//  Created by Asma on 08/11/2021.
//

import UIKit

class ConversionFromKilometer: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    var conversionUnit = ConversionUnit.km
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldUnitKilometer.delegate = self
        
        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
                let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                view.addGestureRecognizer(tap)

    }
    
    @IBOutlet weak var unitKilometerLabel: UILabel!
    @IBOutlet weak var textFieldUnitKilometer: UITextField!
    @IBOutlet weak var segmentUnitKilometer: UISegmentedControl!
    
    
    @IBAction func segmentUnitKilometerAction(_ sender: UISegmentedControl) {
        textFieldUnitKilometer.text = ""
        
        switch segmentUnitKilometer.selectedSegmentIndex {
        case 0:
            conversionUnit = .m
            unitKilometerLabel.text = "0.0 m"
        case 1:
            conversionUnit = .cm
            unitKilometerLabel.text = "0.0 cm"
        default:
            conversionUnit = .inch
            unitKilometerLabel.text = "0.0 inch"
        }
        
    }
    
    func convertToM( kilometer: Double) -> Double {
        return kilometer * 1000
    }
    func convertToCm( kilometer: Double) -> Double {
        return kilometer * 100000
    }
    func convertToInch( kilometer: Double) -> Double {
        return kilometer * 39370.078740157
    }
    
    
    
    @IBAction func textFieldUnitAction(_ sender: UITextField) {
        
        let amountUnit = Double(textFieldUnitKilometer.text ?? "0.0") ?? 0.0
        
        switch conversionUnit {
        case .m:
            let convertedValue = convertToM(kilometer:amountUnit)
            unitKilometerLabel.text = "\(String (format: "%.6f", convertedValue)) m"
        case .cm:
            let convertedValue = convertToCm(kilometer: amountUnit)
            unitKilometerLabel.text = "\(String (format: "%.6f", convertedValue)) cm"
        case .inch:
            let convertedValue = convertToInch(kilometer: amountUnit)
            unitKilometerLabel.text = "\(String (format: "%.6f", convertedValue)) inch"
        case .km: break
        }
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         
        if let lessCount = textFieldUnitKilometer.text?.count, lessCount < 4 {
            return true
        } else { return false }
    }
    
}
