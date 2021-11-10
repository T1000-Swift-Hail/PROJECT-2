//
//  TabCalculatorViewController.swift
//  Metalic
//
//  Created by Anas Hamad on 04/04/1443 AH.
//

import UIKit
enum ConversionType{
    case mm
    case inch
}

class TabCalculatorViewController: UIViewController {
    @IBOutlet var textfieldOD: UITextField!
    @IBOutlet var textfiledNT: UITextField!
    @IBOutlet var conversionLabel: UILabel!
    @IBOutlet var segmantUnit: UISegmentedControl!
    var numberOfTeeth :Double?
    var numberOutDimeter : Double?
    var conversionType = ConversionType.mm
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func calculateMM(NumberOfteaath:Double, OutDimeter:Double){
        guard let intNumberNT : Double = Double(textfiledNT.text ?? "nil") else {return}
        guard let intNumberOD : Double = Double(textfieldOD.text ?? "nil") else {return}
        
        
        let resDP = ((intNumberOD * intNumberNT) / intNumberNT + 2)
        let MOD = ((resDP)/intNumberNT)
        
        conversionLabel.text = "\(String(format:"%.2f",MOD)) mm"
    }
    
    
    func calculateInch(numberOfTeeth:Double, outDimeter:Double){
        guard let intNumberNT : Double = Double(textfiledNT.text ?? "nil") else { return }
        guard let intNumberOD : Double = Double(textfieldOD.text ?? "nil") else { return }
        let resDP = ((intNumberOD * intNumberNT) / intNumberNT + 2)
        conversionLabel.text = "\(String(format:"%.2f",resDP)) Inch"
        
        
    }
    @IBAction func CalculateButton(_ sender: Any) {  guard let intNumberNT : Double = Double(textfiledNT.text ?? "nil") else {return}
        guard let intNumberOD : Double = Double(textfieldOD.text ?? "nil") else {return}
        switch conversionType {
        case .mm:
            let convertedValue: () = calculateMM(NumberOfteaath:intNumberNT , OutDimeter: intNumberOD)
            conversionLabel.text = "\(convertedValue) Pound"
        case .inch :
            let convertedValue: () = calculateInch(numberOfTeeth: intNumberNT,outDimeter: intNumberOD);           conversionLabel.text = "\(convertedValue) Inch"
        }
    }
    
    @IBAction func segmentAction(_ sender: Any) {
        
        switch segmantUnit.selectedSegmentIndex {
            
        case 0:
            conversionType = .mm; conversionLabel.text = "0.0 MM"
        case 1:
            conversionType = .inch; conversionLabel.text = "0.0 Inch"
        default:
            conversionType = .mm; conversionLabel.text = "0.0 MM"}
    }
    
}
