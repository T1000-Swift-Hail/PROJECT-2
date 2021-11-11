//
//  ConversionFromInch.swift
//  Best Converter
//
//  Created by Asma on 08/11/2021.
//

import UIKit

//MARK: - Created a class for conversion from Inch and used the delegate library

class ConversionFromInch: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    var conversionUnit = ConversionUnit.inch
    //MARK: - This connected the label, text Field and segment with IBOutlet
    @IBOutlet weak var unitInchLabel: UILabel!
    @IBOutlet weak var textFieldUnitInch: UITextField!
    @IBOutlet weak var segmentUnitInch: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldUnitInch.delegate = self
        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    //MARK: - Connected Segment with IBAction, and switch cases were called
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
    //MARK: - Arithmetic functions for each unit
    func convertToKm( inch: Double) -> Double {
        return inch * 0.0000254
    }
    func convertToCm( inch: Double) -> Double {
        return inch * 2.54
    }
    func convertToM( inch: Double) -> Double {
        return inch * 0.0254
    }
    //MARK: - Connected text field with IBAction, and switch cases were called
    @IBAction func textFieldUnitAction(_ sender: UITextField) {
        
        let amountUnit = Double(textFieldUnitInch.text ?? "0.0") ?? 0.0
        
        switch conversionUnit {
        case .km:
            let convertedValue = convertToKm(inch:amountUnit)
            unitInchLabel.text = "\(String (format: "%.5f", convertedValue)) km"
        case .cm:
            let convertedValue = convertToCm(inch: amountUnit)
            unitInchLabel.text = "\(String (format: "%.5f", convertedValue)) cm"
        case .m:
            let convertedValue = convertToM(inch: amountUnit)
            unitInchLabel.text = "\(String (format: "%.5f", convertedValue)) m"
        case .inch: break
        }
    }
    //MARK: - A Function determines the number of digits to write
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if let lessCount = textFieldUnitInch.text?.count, lessCount < 5 {
            return true
        } else { return false }
    }
}
