//
//  contactPartenersViewController.swift
//  PROJECT-2
//
//  Created by mona aleid on 03/04/1443 AH.
//

import UIKit

class ContactPartenersViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    

// here we used the segmented controller (swich) to make the users choose what kind of company they want to contact and put picker to select then use segue to move to the next screen where they can write the message.
    
    @IBOutlet weak var lblPartnerEmail: UILabel!
    
    @IBOutlet weak var segmentedController: UISegmentedControl!
    
    @IBOutlet weak var pickerViewEmail: UIPickerView!
    
    
    var arrPartnerEmailPlastic = [ "complains@saudipaper.com", "sales@recyclehub.com.sa"]
    
    var arrPartnerEmailNylon = ["Waraq@alghadeergroup.com", "info@tadweeer.com", " info@wasco-sa.com" ]
    
    var arrPartnerEmailPaper = ["zoujaj@zoujaj-glass.com", "info@suhulalbeeah.com"]
    
    var arrPartnerEmailCans = [ "sales@recyclehub.com.sa", "Mohammed@alghadeergroup.com"]
    
    var arrPartnerEmail = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerViewEmail.delegate = self
        pickerViewEmail.dataSource = self
        
        arrPartnerEmail = arrPartnerEmailPlastic
    }
   
    @IBAction func next(_ sender: Any) {

        performSegue(withIdentifier: "EmailScreen", sender: nil)
    }
    
    @IBAction func segDidChanged(_ sender: Any) {
        print("index =\(segmentedController.selectedSegmentIndex)")
        print("valued =\(segmentedController.titleForSegment(at: segmentedController.selectedSegmentIndex) ?? "")")
        
        switch segmentedController.selectedSegmentIndex {
            case 0:
             arrPartnerEmail = arrPartnerEmailPlastic
            case 1:
            arrPartnerEmail = arrPartnerEmailNylon
            case 2:
            arrPartnerEmail = arrPartnerEmailPaper
            case 3:
            arrPartnerEmail = arrPartnerEmailCans
            default :
            arrPartnerEmail = arrPartnerEmailPlastic
        }
        
        pickerViewEmail.reloadAllComponents()
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrPartnerEmail.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrPartnerEmail[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
        lblPartnerEmail.text = arrPartnerEmail[row]
        
        
        
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "EmailScreen"{
            let emailScreen  = segue.destination as! MessageVC
            emailScreen.email = lblPartnerEmail.text
        }
    }
    
    

}
