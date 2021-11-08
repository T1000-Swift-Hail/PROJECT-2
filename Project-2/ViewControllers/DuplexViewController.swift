//
//  DuplexViewController.swift
//  Project-2
//
//  Created by Majed Alshammari on 03/04/1443 AH.
//

import UIKit

class DuplexViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate {
    var get = ""
    var selectedCountry: String?
    
    
    //    let address:UITextField? = {
    //        let textFiled = UITextField()
    //
    //        textFiled.translatesAutoresizingMaskIntoConstraints = false
    //
    //        return textFiled
    //
    //    }()
    @IBOutlet var textField: UITextField!
    
    
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
        let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.action))
        toolBar.setItems([button], animated: true)
        toolBar.isUserInteractionEnabled = true
        textField?.inputAccessoryView = toolBar
    }
    @objc func action() {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        createPickerView()
        dismissPickerView()
        // Do any additional setup after loading the view.
    }
}
