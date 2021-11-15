//
//  LanguegeViewController.swift
//  saudi elctri city company
//
//  Created by Mohammed Abdullah on 03/04/1443 AH.
//


// MARK: - language code

import UIKit

class LanguegeViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var dropDown: UIPickerView!
    
    var list = ["1", "2", "3", "4", "5", "6"]
    
    var language = ["","Arabic", "English", "Turkish", "Japan", "China", "France"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        dropDown.delegate = self
        dropDown.dataSource = self
        //dropDown.
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return language.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textBox.text = language[row]
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        return language[row]
        
    }
    
    
    
}
