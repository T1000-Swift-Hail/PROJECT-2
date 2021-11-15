//
//  BalootViewController.swift
//  Games Calculetor
//
//  Created by mac on 07/11/2021 AH.
//

import UIKit



enum Directions {
    case Top
    case Left
    case Right
    case Downd
}

class FirstViewController: UIViewController, UITextFieldDelegate  {
    @IBOutlet weak var arrowImage: UIImageView!
    
    @IBOutlet var imageView : UIImageView!
    
    @IBOutlet weak var usTextFied: UITextField!
    @IBOutlet weak var theirsTextFied: UITextField!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var playagainButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var total2Label: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    
    var Totai1 : [Int] = []
    var Totai2 : [Int] = []
    var agine1   = 0
    var agine2   = 0
    
    var arrowDir = 0
    
    override func viewDidLoad() {
        usTextFied.delegate = self
        theirsTextFied.delegate = self
        usTextFied.text = ""
        theirsTextFied.text = ""
        
        
        super.viewDidLoad()
        backButton.layer.cornerRadius = 30
        backButton.layer.masksToBounds = true
        backButton.layer.cornerRadius = backButton.frame.width / 8
        
        addButton.layer.cornerRadius = 30
        addButton.layer.masksToBounds = true
        addButton.layer.cornerRadius = addButton.frame.width / 8
        
        
        playagainButton.layer.cornerRadius = 30
        playagainButton.layer.masksToBounds = true
        playagainButton.layer.cornerRadius = playagainButton.frame.width / 8
        
       
        
        
    }
    
    
    //
    @IBAction func back(_ sender: Any) {
        
        self.undoResult()
        
    }
    
    @IBAction func playagain(_ sender: Any) {
        
        self.renewGame()
        
    }
    
    
    
    @IBAction func add(_ sender: Any) {
        
        arrowDir += 1
        arrowDir = arrowDir > 3 ? 0 : arrowDir
        arrowImage.image = arrowDirection(dir:arrowDir)
        
        self.usRightfunc()
        
        self.thirsLeftfunc ()
        
        
        
        view.endEditing(true)
    }
    
    
    func arrowDirection(dir : Int) -> UIImage {
        
        let images: Array<UIImage> = [UIImage(named: "1-11")!,UIImage(named: "1-14")!,UIImage(named: "1-13")!,UIImage(named: "1-12")!]
        
        
        
        return images[dir]
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }
    
    
    
}


