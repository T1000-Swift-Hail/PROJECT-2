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
    @IBOutlet var segmantUnit: UISegmentedControl!
    @IBOutlet var converValue: UILabel!
    var choosenValue = ChangeInput.firstSpeed
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionBottun(_ sender: Any) {
        
        guard let secSpeed : Double = Double(speedTwo.text ?? "nil") else {return }
        guard let firSpeed : Double = Double(speedOne.text ?? "nil") else {return }
        guard let secTeeth : Double = Double(teethTwo.text ?? "nil") else {return }
        guard let firTeeth : Double = Double(teethOne.text ?? "nil") else {return }
    
        switch choosenValue {
        case .firstSpeed:
           let convertedValue = firstSpeed(secSpeed: secSpeed, secTeeth: secTeeth, firTeeth: firTeeth)
            converValue.text = "\(convertedValue) "
        case .secondSpeed :
            let convertedValue = secondSpeed (firSpeed: firSpeed, secTeeth: secTeeth, firTeeth: firTeeth)
            converValue.text = "\(convertedValue).rpm"
        case .teethFrist:
            let convertedValue = firstTeeth(secSpeed: secSpeed, secTeeth: secTeeth, firTeeth: firTeeth)
            converValue.text = "\(convertedValue)"
        case .teethSecond:
            let convertedValue = secondTeeth(secSpeed: secSpeed, firSpeed: firSpeed, firTeeth: firTeeth)
            converValue.text = "\(convertedValue)"
        }
        
    }
        
    
    
    @IBAction func segGearSpeedTypes(_ sender: UISegmentedControl) {
        
        switch segmantUnit.selectedSegmentIndex {
            
        case 0:
            choosenValue = .firstSpeed
            speedOne.isHidden = true
            teethTwo.isHidden = false
            speedTwo.isHidden = false
            teethOne.isHidden = false
        case 1:
            choosenValue = .teethFrist
            teethOne.isHidden = true
            teethTwo.isHidden = false
            speedTwo.isHidden = false
            speedOne.isHidden = false
        case 2:
            choosenValue = .secondSpeed
            speedTwo.isHidden = true
            teethTwo.isHidden = false
            speedOne.isHidden = false
            teethOne.isHidden = false
        case 3:
            choosenValue = .teethSecond
            teethTwo.isHidden = true
            speedTwo.isHidden = false
            speedOne.isHidden = false
            teethOne.isHidden = false
        default:
            choosenValue = .firstSpeed
            
        
        }
        
    }
    
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
    func firstTeeth(secSpeed:Double , secTeeth:Double, firTeeth:Double) -> String {
        
     
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
         func CalculateAction(_ sender: Any) {
           
            
        
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
