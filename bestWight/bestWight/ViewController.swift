//
//  ViewController.swift
//  bestWight
//
//  Created by Hesah Alqhtani on 06/11/2021.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource , UIPickerViewDelegate , UITextFieldDelegate {
    
    var gender = ["Male" , "female"]
    
    
    @IBOutlet weak var SelctedGender: UILabel!
    @IBOutlet weak var PickerGender: UIPickerView!
    
    @IBOutlet weak var textWeight: UITextField!
    @IBOutlet weak var textHeight: UITextField!
    
    @IBOutlet weak var textName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        PickerGender.dataSource = self
        PickerGender.delegate = self
       
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    var selctedGander1 = 0
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gender [row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        SelctedGender.text = gender [row]
        selctedGander1 = row
    }
    
    @IBAction func GitBestWeight(_ sender: Any) {

        func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
        
}
    
    @IBAction func calculateWeight(_ sender: Any) {
        
        if textWeight.text?.isEmpty ?? true || textWeight.text?.isEmpty ?? true || textName.text?.isEmpty ?? true {
            
            let alert = UIAlertController (title:  "", message:"Please Inter Your Weight And Height!" , preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Done".loclaized, style: .default, handler: nil))
            self.present(alert, animated: true)
        }else{
            
            
            
        }
        
        
//        let result
        
        performSegue(withIdentifier: "resultScreen", sender: nil)
    }
    
    
    //resultScreedn
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "resultScreen" {
            
            let informationViewController = segue.destination as! InformationViewController
            
//           print("-height:\(textHeight.text)")
            informationViewController.setUserResult = 1
            informationViewController.setUserWeight = Double(textWeight.text ?? "1") ?? 1
            informationViewController.setUserHeight = Double(textHeight.text ?? "1") ?? 1
            
        }
    }


}

extension String {
    
    var loclaized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    
}
