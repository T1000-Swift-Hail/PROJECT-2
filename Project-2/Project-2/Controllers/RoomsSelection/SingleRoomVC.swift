//
//  SingleViewController.swift
//  Project-2
//
//  Created by Majed Alshammari on 03/04/1443 AH.
//

import UIKit

class SingleRoomVC: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    var selectedCity: String?
    var buttonChosed: UIButton?
    let userDefault = UserDefaults.standard

    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPickerView()
        dismissPickerView()
    }
    
    
  
    @IBAction func reserveButton(_ sender: UIButton) {
        if textField.hasText {
           warningAlert()
        userDefault.set(true, forKey: "SelectedAddress")

        } else {
           errorAlert()
        }
    }
    
    
   
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cityList.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cityList[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedCity = cityList[row] // selected item
        textField.text = selectedCity
    }
    
    
    func createPickerView() {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        textField.inputView = pickerView
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


extension SingleRoomVC {
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
