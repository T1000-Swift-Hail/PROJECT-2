//
//  HindViewController.swift
//  Games Calculetor
//
//  Created by mac on 01/04/1443 AH.
//

import UIKit

class HindViewController:
    UIViewController, UITextFieldDelegate  {
    
    @IBOutlet weak var hind1Button: UIButton!
    @IBOutlet weak var hind2Botton: UIButton!
    @IBOutlet weak var playagainBotton: UIButton!
    
    @IBOutlet weak var usLabel: UILabel!
    @IBOutlet weak var theireLabel: UILabel!
    @IBOutlet weak var differenceLabel: UILabel!
    @IBOutlet weak var gamenumberLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    
    var totai1 : [Int] = []
    var totai2 : [Int] = []
    
    // Arithmetic Values used in Hind
    
    var differ = 0
    var pure1 = -30
    var pure2 = 200
    var hind1 = -60
    var hind2 = 400
    var goker1 = -120
    var goker2 = 800
    var color1 = -120
    var color2 = 800
    var gokercolor1 = -240
    var gokercolor2 = 1600
    var zat1 = -240
    var zat2 = 1600
    var gokren1 = -240
    var gokren2 = 1600
    var gokrencolor1 = -360
    var gokrencolor2 = 2400
    var gokrenzat1 = -480
    var gokrenzat2 = 3200
    var differencePure = 170
    var differenceHind = 340
    var differenceColor = 680
    var differenceGokren = 1360
    var differenceGokrencoloen = 2040
    var differenceGokrenzat = 2720
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Here I derigned the Button shape
        
        setLayout()
        
        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Here I will hide the keyboard
        
        view.endEditing(true)
        
    }
    
    
    @IBAction func hind1ActionButton(_ sender: Any) {
        // Here I will calculate Hind for the first team
        // Button will be yellow
        
        haid11()
        
    }
    @IBAction func haid2ActionButton(_ sender: Any) {
        // Here I will calculate Hind for the second team
        // Button will be red
        
        haid2()
    }
    
    @IBAction func againButton(_ sender: Any) {
        
        //The Button will renew the values and start the game over with new values
        
        usLabel.text = "0"
        theireLabel.text = "0"
        differenceLabel.text = "0"
        gamenumberLabel.text = "0"
        numberTextField.text = ""
        
        
        
        
    }
    
}
