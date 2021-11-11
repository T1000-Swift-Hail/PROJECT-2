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
        guard let firSpeed : Double = Double(speedTwo.text ?? "nil") else {return }
        guard let secTeeth : Double = Double(teethTwo.text ?? "nil") else {return }
        guard let firTeeth : Double = Double(teethOne.text ?? "nil") else {return }
    
        switch choosenValue {
        case .firstSpeed:
           let convertedValue = firstSpeed(secSpeed: secSpeed, teTwo: secTeeth, fTeeth: firTeeth)
            converValue.text = "\(convertedValue) "
        case .secondSpeed :
            let convertedValue = secondSpeed(firrSpeed: firSpeed, teTwo: secTeeth, fTeeth: firTeeth)
            converValue.text = "\(convertedValue)"
        case .teethFrist:
            let convertedValue = firstTeeth(secSpeed: secSpeed, teTwo: secTeeth, fTeeth: firTeeth)
            converValue.text = "\(convertedValue)"
        case .teethSecond:
            let convertedValue = SecondTeeth(secSpeed: secSpeed, teTwo: secTeeth, fTeeth: firTeeth)
            converValue.text = "\(convertedValue)"
        }}
        
    
    
    @IBAction func segGearSpeedTypes(_ sender: UISegmentedControl) {
        
        switch segmantUnit.selectedSegmentIndex {
            
        case 0:
            choosenValue = .firstSpeed
            
        case 1:
            choosenValue = .teethFrist
         
        case 2:
            choosenValue = .secondSpeed
            
        case 3:
            choosenValue = .teethSecond
            
        default:
            choosenValue = .firstSpeed
            
        
        }
        
    }
    
    func firstSpeed(secSpeed:Double , teTwo:Double, fTeeth:Double) -> String {
        
     
        guard let secSpeed : Double = Double(speedTwo.text ?? "nil") else {return ""}
        guard let secTeeth : Double = Double(teethTwo.text ?? "nil") else {return ""}
        guard let firTeeth : Double = Double(teethOne.text ?? "nil") else {return ""}
        let frSpeed = ((secSpeed * firTeeth) / secTeeth)
        let resultFirstSpeed = "\(String(format:"%.2f",frSpeed))"
        converValue.text = resultFirstSpeed
        return resultFirstSpeed
        
    }
    func secondSpeed(firrSpeed:Double , teTwo:Double, fTeeth:Double) -> String {
        
     
        guard let firSpeed : Double = Double(speedTwo.text ?? "nil") else {return ""}
        guard let secTeeth : Double = Double(teethTwo.text ?? "nil") else {return ""}
        guard let firTeeth : Double = Double(teethOne.text ?? "nil") else {return ""}
        let secSpeed = ((firSpeed * firTeeth) / secTeeth)
        let resultFirstSpeed = "\(String(format:"%.2f",secSpeed))"
        converValue.text = resultFirstSpeed
        return resultFirstSpeed
        
    }
    func firstTeeth(secSpeed:Double , teTwo:Double, fTeeth:Double) -> String {
        
     
        guard let secSpeed : Double = Double(speedTwo.text ?? "nil") else {return ""}
        guard let secTeeth : Double = Double(teethTwo.text ?? "nil") else {return ""}
        guard let firSpeed : Double = Double(teethOne.text ?? "nil") else {return ""}
        let firTeeth = ((secSpeed * secTeeth) / firSpeed)
        let resultFirstSpeed = "\(String(format:"%.2f",firTeeth))"
        converValue.text = resultFirstSpeed
        return resultFirstSpeed
        
    }
    func SecondTeeth(secSpeed:Double , teTwo:Double, fTeeth:Double) -> String {
        
     
        guard let secSpeed : Double = Double(speedTwo.text ?? "nil") else {return ""}
        guard let firSpeed : Double = Double(teethTwo.text ?? "nil") else {return ""}
        guard let firTeeth : Double = Double(teethOne.text ?? "nil") else {return ""}
        let secTeeth = ((firSpeed * firTeeth) / secSpeed)
        let resultFirstSpeed = "\(String(format:"%.2f",secTeeth))"
        converValue.text = resultFirstSpeed
        return resultFirstSpeed
        
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
