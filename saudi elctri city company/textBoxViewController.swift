//
//  textBoxViewController.swift
//  saudi elctri city company
//
//  Created by Mohammed Abdullah on 04/04/1443 AH.
//

import UIKit

class textBoxViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    
    @IBOutlet weak var dropDown: UIPickerView!
    @IBOutlet weak var textBox: UITextField!
    
    
    var list = ["1", "2", "3", "4", "5", "6"]
    
    var location = ["","Hail", "Tabuk", "Arar", "Jedah", "Makah", "Qasim"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dropDown.delegate = self
        dropDown.dataSource = self
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return location.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textBox.text = location[row]
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        return location[row]
        
    }
    
    
    
}
