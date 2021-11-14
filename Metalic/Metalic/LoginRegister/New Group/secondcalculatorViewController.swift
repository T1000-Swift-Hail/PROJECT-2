//
//  secondcalculatorViewController.swift
//  Metalic
//
//  Created by Anas Hamad on 06/04/1443 AH.
//

import UIKit

enum ChangeInput{
    case firstSpeed
    case secondSpeed
    case teethFrist
    case teethSecond
}


class secondcalculatorViewController: UIViewController {
    
    @IBOutlet var speedOne: UITextField!
    @IBOutlet var teethOne: UITextField!
    @IBOutlet var speedTwo: UITextField!
    @IBOutlet var teethTwo: UITextField!
    @IBOutlet var converValue: UILabel!
    var choosenValue = ChangeInput.firstSpeed
    var segmantUnit: UISegmentedControl?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - calculating bottuns
    @IBAction func actionBottun(_ sender: Any) {
        
        guard let secSpeed : Double = Double(speedTwo.text ?? "nil") else {return }
        guard let firSpeed : Double = Double(speedOne.text ?? "nil") else {return }
        guard let secTeeth : Double = Double(teethTwo.text ?? "nil") else {return }
        guard let firTeeth : Double = Double(teethOne.text ?? "nil") else {return }
        
    //segmant switch
        switch choosenValue {
        case .firstSpeed:
           let convertedValue = firstSpeed(secSpeed: secSpeed, secTeeth: secTeeth, firTeeth: firTeeth)
            converValue.text = "\(convertedValue) "
        case .secondSpeed :
            let convertedValue = secondSpeed (firSpeed: firSpeed, secTeeth: secTeeth, firTeeth: firTeeth)
            converValue.text = "\(convertedValue)"
        case .teethFrist:
            let convertedValue = firstTeeth(secSpeed: secSpeed, secTeeth: secTeeth, firSpeed: firSpeed)
            converValue.text = "\(convertedValue)"
        case .teethSecond:
            let convertedValue = secondTeeth(secSpeed: secSpeed, firSpeed: firSpeed, firTeeth: firTeeth)
            converValue.text = "\(convertedValue)"
        }
    }
        
    // MARK: -segmant selection
    
    @IBAction func segGearSpeedTypes(_ sender: UISegmentedControl) {
        
        switch segmantUnit?.selectedSegmentIndex {
            
        case 0:
            choosenValue = .firstSpeed
            speedOne.isEnabled = false
        case 1:
            choosenValue = .teethFrist
            teethOne.isEnabled = false
        case 2:
            choosenValue = .secondSpeed
            speedTwo.isEnabled = false
        case 3:
            choosenValue = .teethSecond
            teethTwo.isEnabled = false
        default:
            choosenValue = .firstSpeed
        }
    }
    // MARK: - list calculation for each case in segmant
    
    func firstSpeed(secSpeed:Double , secTeeth:Double, firTeeth:Double) -> String {
        
        
        guard let secSpeed : Double = Double(speedTwo.text ?? "nil") else {return ""}
        guard let secTeeth : Double = Double(teethTwo.text ?? "nil") else {return ""}
        guard let firTeeth : Double = Double(teethOne.text ?? "nil") else {return ""}
        let frSpeed = ((secSpeed * firTeeth) / secTeeth)
        let results = "\(String(format:"%.2f",frSpeed))"
        converValue.text = results
        return results
        
    }
    func secondSpeed(firSpeed:Double , secTeeth:Double, firTeeth:Double) -> String {
        
        guard let firSpeed : Double = Double(speedOne.text ?? "nil") else {return ""}
        guard let secTeeth : Double = Double(teethTwo.text ?? "nil") else {return ""}
        guard let firTeeth : Double = Double(teethOne.text ?? "nil") else {return ""}
        let secSpeed = ((firSpeed * firTeeth) / secTeeth)
        let results = "\(String(format:"%.2f",secSpeed))"
        converValue.text = results
        return results
        
    }
    func firstTeeth(secSpeed:Double , secTeeth:Double, firSpeed:Double) -> String {
        
     
        guard let secSpeed : Double = Double(speedTwo.text ?? "nil") else {return ""}
        guard let secTeeth : Double = Double(teethTwo.text ?? "nil") else {return ""}
        guard let firSpeed : Double = Double(speedOne.text ?? "nil") else {return ""}
        let firTeeth = ((secSpeed * secTeeth) / firSpeed)
        let results = "\(String(format:"%.2f",firTeeth))"
        converValue.text = results
        return results
        
    }
    func secondTeeth(secSpeed:Double , firSpeed:Double, firTeeth:Double) -> String {
        
     
        guard let secSpeed : Double = Double(speedTwo.text ?? "nil") else {return ""}
        guard let firSpeed : Double = Double(speedOne.text ?? "nil") else {return ""}
        guard let firTeeth : Double = Double(teethOne.text ?? "nil") else {return ""}
        let secTeeth = ((firSpeed * firTeeth) / secSpeed)
        let results = "\(String(format:"%.2f",secTeeth))"
        converValue.text = results
        return results
        
    }
 
}
