//
//  ViewController.swift
//  Hind and Baloot account
//
//  Created by mac on 09/04/1443 AH.
//
import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate  {
    
    @IBOutlet weak var hindBootam: UIButton!
    @IBOutlet weak var balootBootam: UIButton!
    @IBOutlet weak var chengelanguage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        balootBootam.layer.cornerRadius = 30
        balootBootam.layer.masksToBounds = true
        balootBootam.layer.cornerRadius = balootBootam.frame.width / 8
        balootBootam.backgroundColor = .yellow
        
        
        hindBootam.layer.cornerRadius = 30
        hindBootam.layer.cornerRadius = hindBootam.frame.width / 8
        hindBootam.layer.masksToBounds = true
        hindBootam.backgroundColor = .yellow
        
        
        
        chengelanguage.layer.cornerRadius = 30
        chengelanguage.layer.cornerRadius = chengelanguage.frame.width / 8
        
    }
    
    @IBAction func emailButton(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://twitter.com/su_zy7")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func chengelanguage(_ sender: Any) {
        
        
        let chengelangu = UIAlertController(title: NSLocalizedString("The application will be restarted", comment: ""), message: NSLocalizedString( "Choose your preferred language ",comment: ""), preferredStyle: .actionSheet)
        
        chengelangu.addAction(UIAlertAction(title: "Einglish", style: .default, handler: { action in
            let currentlang = Locale.current.languageCode
            
            let newLanguage = currentlang == "en" ? "ar" : "en"
            UserDefaults.standard.setValue([newLanguage], forKey: "AppleLanguages")
            
            exit(0)
        }))
        chengelangu.addAction(UIAlertAction(title: "عربي", style: .default, handler: {action in
            let currentlang = Locale.current.languageCode
            
            let newLanguage = currentlang == "en" ? "ar" : "ar"
            UserDefaults.standard.setValue([newLanguage], forKey: "AppleLanguages")
            
            exit(0)
        }))
        chengelangu.addAction(UIAlertAction(title:NSLocalizedString("Cancel", comment: ""), style: .cancel, handler: nil))
        present(chengelangu, animated: true, completion: nil)
        
        
    }
    
    
    
}
    

