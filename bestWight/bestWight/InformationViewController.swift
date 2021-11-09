//
//  InformationViewController.swift
//  bestWight
//
//  Created by Hesah Alqhtani on 08/11/2021.
//

import UIKit

class InformationViewController: UIViewController{
    
    //   var segmentedControlView : UISegmentedControl!
    //  var changeViewLabel : UILabel!
    
    var userResult : Int = 0
    var userWeight : Double = 0
    var userHeight : Double = 0
    
    var setUserResult : Int = 0
    var setUserWeight : Double = 0
    var setUserHeight : Double = 0
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    let results = ["overweight" , "normal" , "underweight"]
    @IBOutlet weak var laDisplyBestWeight: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userHeight = setUserHeight
        userWeight = setUserWeight
        userResult = setUserResult
        
        let result = bmiCalclator(weight : userWeight , height : userHeight)
        
        laDisplyBestWeight.text = result
    }
    
    @IBAction func changeModes(_ sender: UISegmentedControl) {
        laDisplyBestWeight.text = " \(results[segmentControl.selectedSegmentIndex])  ! "
        
        
    }
    func bmiCalclator (weight : Double , height : Double ) -> String {
        
        
        print("height:\(height)")
        print("weight:\(weight)")
        
        let results = (height * height)
        let bmi =  weight / results
        
        print("bmi:\(bmi)")
        
        if bmi > 25 {
            segmentControl.selectedSegmentIndex = 0
            segmentControl.setTitle("overweight", forSegmentAt: 0)
            view.backgroundColor = .red
            return "Your BMI is \(bmi) . You are overweight"
            
        } else if bmi >= 18.5 && bmi <= 25 {
            segmentControl.selectedSegmentIndex = 1
            segmentControl.setTitle("Normal Rang", forSegmentAt: 1)
            view.backgroundColor = .green
            return " Your BMI is \(bmi) . You are at a normal weight"
            
        } else {
            segmentControl.selectedSegmentIndex = 2
            segmentControl.setTitle("Under Weight", forSegmentAt: 2)
            view.backgroundColor = .yellow
            return "Your BMI is \(bmi) . You are underweight"
        }
    }
    
    
    
    //    }
    //    mutating func bmiCalclator(height: Float, weight: Float) {
    //        let BMIvalue = weight / pow(height, 2)
    //
    //        if BMIvalue < 18.5 {
    //            bmi = BCBMI(value: BMIvalue, advice: "You're Underweight!", color: .systemYellow)
    //        } else if BMIvalue < 24.9 {
    //            bmi = BCBMI(value: BMIvalue, advice: "You're Healthy!", color: .systemGreen)
    //        } else {
    //            bmi = BCBMI(value: BMIvalue, advice: "You're Overweight!", color: .systemRed)
    //        }
    
    
}
