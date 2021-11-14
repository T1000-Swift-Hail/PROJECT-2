//
//  InformationViewController.swift
//  bestWight
//
//  Created by Hesah Alqhtani on 08/11/2021.
//

import UIKit
//Use class To identify user information...
class InformationViewController: UIViewController{
    
    var userResult : Int = 0
    var userWeight : Double = 0
    var userHeight : Double = 0
    
    var setUserResult : Int = 0
    var setUserWeight : Double = 0
    var setUserHeight : Double = 0

    
    @IBOutlet weak var segmentControl: UISegmentedControl!
//    use array for segmentment
    let results = ["overweight".loclaized , "normal".loclaized , "underweight".loclaized]
    @IBOutlet weak var laDisplyBestWeight: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userHeight = setUserHeight
        userWeight = setUserWeight
        userResult = setUserResult
//        result
        let result = bmiCalclator(weight : userWeight , height : userHeight)
        
        laDisplyBestWeight.text = result
    }
    
    @IBAction func changeModes(_ sender: UISegmentedControl) {
        laDisplyBestWeight.text = " \(results[segmentControl.selectedSegmentIndex])  ! "


    }
    //this function prints the calc result to label
    func bmiCalclator (weight : Double , height : Double ) -> String {
        
        //this function prints the calc result to label
        
        print("height:\(height)")
        print("weight:\(weight)")
        
        let results = (height * height)
        let bmi =  weight / results
        
        print("bmi:\(bmi)")
//        Use if statment to calculate body mass..
        if bmi > 25 {
            segmentControl.selectedSegmentIndex = 0
            segmentControl.setTitle("overweight".loclaized, forSegmentAt: 0)
            
            segmentControl.setTitle("underweight".loclaized, forSegmentAt: 2)
            view.backgroundColor = .systemRed
            return "\("Your BMI is" .loclaized ) \(bmi) .\("You're Overweight!".loclaized)"
            
        } else if bmi >= 18.5 && bmi <= 25 {
            segmentControl.selectedSegmentIndex = 1
            segmentControl.setTitle("normal".loclaized, forSegmentAt: 1)
            view.backgroundColor = .systemGreen
            return "\("Your BMI is".loclaized) \(bmi) . \("You're Healthy!".loclaized)"
            
        } else {
            segmentControl.selectedSegmentIndex = 2
            segmentControl.setTitle("underweight".loclaized, forSegmentAt: 2)
            view.backgroundColor = .systemYellow
            return "\("Your BMI is".loclaized) \(bmi) .\( "You're Underweight!".loclaized)"
       }
        
    }
    
    
    
   
    
}
