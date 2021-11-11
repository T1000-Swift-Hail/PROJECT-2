//
//  ConversionFromCentimeter.swift
//  Best Converter
//
//  Created by Asma on 08/11/2021.
//

import UIKit

//MARK: - Created a class for conversion from Centimeter and used the delegate library

class ConversionFromCentimeter: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    var conversionUnit = ConversionUnit.cm
    //MARK: - This connected the label, text Field and segment with IBOutlet
    
    @IBOutlet weak var unitCentimeterLabel: UILabel!
    @IBOutlet weak var textFieldUnitCentimeter: UITextField!
    @IBOutlet weak var segmentUnitCentimeter: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldUnitCentimeter.delegate = self
        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    //MARK: - Connected Segment with IBAction, and switch cases were called
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
    //MARK: - Arithmetic functions for each unit
    func convertToKm( centimeter: Double) -> Double {
        return centimeter * 0.00001
    }
    func convertToM( centimeter: Double) -> Double {
        return centimeter * 0.01
    }
    func convertToInch( centimeter: Double) -> Double {
        return centimeter * 0.39370078740157
    }
    
    //MARK: - Connected text field with IBAction, and switch cases were called
    @IBAction func textFieldUnitAction(_ sender: UITextField) {
        
        let amountUnit = Double(textFieldUnitCentimeter.text ?? "0.0") ?? 0.0
        
        switch conversionUnit {
        case .km:
            let convertedValue = convertToKm(centimeter:amountUnit)
            unitCentimeterLabel.text = "\(String (format: "%.5f", convertedValue)) km"
        case .m:
            let convertedValue = convertToM(centimeter: amountUnit)
            unitCentimeterLabel.text = "\(String (format: "%.5f", convertedValue)) m"
        case .inch:
            let convertedValue = convertToInch(centimeter: amountUnit)
            unitCentimeterLabel.text = "\(String (format: "%.5f", convertedValue)) inch"
        case .cm: break
        }
    }
    //MARK: - A Function determines the number of digits to write
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if let lessCount = textFieldUnitCentimeter.text?.count, lessCount < 5 {
            return true
        } else { return false }
    }
}
