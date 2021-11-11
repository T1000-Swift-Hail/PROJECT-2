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
            view.backgroundColor = .systemRed
            return "Your BMI is \(bmi) .You're Overweight!"
            
        } else if bmi >= 18.5 && bmi <= 25 {
            segmentControl.selectedSegmentIndex = 1
            segmentControl.setTitle("Normal Rang", forSegmentAt: 1)
            view.backgroundColor = .systemGreen
            return "Your BMI is \(bmi) . You're Healthy!"
            
        } else {
            segmentControl.selectedSegmentIndex = 2
            segmentControl.setTitle("Under Weight", forSegmentAt: 2)
            view.backgroundColor = .systemYellow
            return "Your BMI is \(bmi) . You're Underweight!"
       }
        
    }
    
    
    
   
    
}
