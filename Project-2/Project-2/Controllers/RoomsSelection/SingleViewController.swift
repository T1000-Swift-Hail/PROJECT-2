//
//  SingleViewController.swift
//  Project-2
//
//  Created by Majed Alshammari on 03/04/1443 AH.
//

import UIKit

class SingleViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate {
    
    var selectedCountry: String?
    var buttonChosed: UIButton?

    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPickerView()
        dismissPickerView()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func reserveButton(_ sender: UIButton) {
        if textField.hasText {
            warningAlert()
        }
        else {
            errorAlert()
        }
    }
    
    
   
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countryList.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countryList[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedCountry = countryList[row] // selected item
        textField.text = selectedCountry
    }
    
    
    func createPickerView() {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        textField.inputView = pickerView
        textField.delegate = self
    }
    
    
    func dismissPickerView() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let button = UIBarButtonItem(title: "Done".localized, style: .plain, target: self, action: #selector(self.action))
        toolBar.setItems([button], animated: true)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
    }
    
    @objc func action() {
        view.endEditing(true)
    }
    
    
}


extension SingleViewController {
 func completedAlert () {
     let alert = UIAlertController(title: "Reservation Completed!".localized, message: "AN SMS HAS BEEN SENT, THANK YOU FOR USING UOH STUDENT HOSTEL".localized, preferredStyle: .alert)
     let ok = UIAlertAction(title: "OK".localized, style: .default) { ok in
         print("OK".localized)
    }
    alert.addAction(ok)
    
    present(alert, animated: false)
    }
    
    
    func errorAlert() {
        let alert = UIAlertController(title: "Address unknown!".localized, message: "PLEASE CHOOSE YOUR ADDRESS".localized, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK".localized, style: .default) { ok in
            print("OK".localized)
        }
    alert.addAction(ok)
        present(alert, animated: false)
    }
    
    
    func warningAlert() {
        let alert = UIAlertController(title: "Warning!".localized, message: "Are you sure you want to reserve this room?".localized, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK".localized, style: .default) { ok in
        self.completedAlert()
        }
        let cancel = UIAlertAction(title: "Cancel".localized, style: .cancel, handler: nil)
    alert.addAction(ok)
    alert.addAction(cancel)
        present(alert, animated: false)
    }
}
