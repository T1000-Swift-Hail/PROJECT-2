//
//  ConversionFromCentimeter.swift
//  Best Converter
//
//  Created by Asma on 08/11/2021.
//

import UIKit

class ConversionFromCentimeter: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    var conversionUnit = ConversionUnit.cm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldUnitCentimeter.delegate = self
        
        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
                let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                view.addGestureRecognizer(tap)

    }
    
    @IBOutlet weak var unitCentimeterLabel: UILabel!
    @IBOutlet weak var textFieldUnitCentimeter: UITextField!
    @IBOutlet weak var segmentUnitCentimeter: UISegmentedControl!
    
    
    @IBAction func segmentUnitCentimeterAction(_ sender: UISegmentedControl) {
        textFieldUnitCentimeter.text = ""
        
        switch segmentUnitCentimeter.selectedSegmentIndex {
        case 0:
            conversionUnit = .km
            unitCentimeterLabel.text = "0.0 km"
        case 1:
            conversionUnit = .m
            unitCentimeterLabel.text = "0.0 m"
        default:
            conversionUnit = .inch
            unitCentimeterLabel.text = "0.0 inch"
        }
        
    }
    
    func convertToKm( centimeter: Double) -> Double {
        return centimeter * 0.001
    }
    func convertToM( centimeter: Double) -> Double {
        return centimeter * 0.01
    }
    func convertToInch( centimeter: Double) -> Double {
        return centimeter * 0.39370078740157
    }
    
    
    
    @IBAction func textFieldUnitAction(_ sender: UITextField) {
        
        let amountUnit = Double(textFieldUnitCentimeter.text ?? "0.0") ?? 0.0
        
        switch conversionUnit {
        case .km:
            let convertedValue = convertToKm(centimeter:amountUnit)
            unitCentimeterLabel.text = "\(String (format: "%.6f", convertedValue)) km"
        case .m:
            let convertedValue = convertToM(centimeter: amountUnit)
            unitCentimeterLabel.text = "\(String (format: "%.6f", convertedValue)) m"
        case .inch:
            let convertedValue = convertToInch(centimeter: amountUnit)
            unitCentimeterLabel.text = "\(String (format: "%.6f", convertedValue)) inch"
        case .cm: break
        }
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         
        if let lessCount = textFieldUnitCentimeter.text?.count, lessCount < 4 {
            return true
        } else { return false }
    }
    
}
