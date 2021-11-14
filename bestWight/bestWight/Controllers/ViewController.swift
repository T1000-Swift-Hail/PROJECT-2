//
//  ViewController.swift
//  bestWight
//
//  Created by Hesah Alqhtani on 06/11/2021.
//

import UIKit
//delegates for picker + text field
class ViewController: UIViewController , UIPickerViewDataSource , UIPickerViewDelegate , UITextFieldDelegate {
//    use array to define user's gender
    var gender = ["Male".loclaized , "female".loclaized]
    

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
        //dismiss keyboard when user touch blank spots
        func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       view.endEditing(true)
        return false
    }
        
}
    
    @IBAction func calculateWeight(_ sender: Any) {
//        use if statment If the data is empty, an alert is used to fill in the data..
        if textWeight.text?.isEmpty ?? true || textWeight.text?.isEmpty ?? true || textName.text?.isEmpty ?? true {
            
            let alert = UIAlertController (title:  "", message:"Please Enter Your Weight And Height!" .loclaized, preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Done".loclaized, style: .default, handler: nil))
            self.present(alert, animated: true)
        }else{
            
            
            
        }
        
        
//        let result
        
        performSegue(withIdentifier: "resultScreen", sender: nil)
    }
    
    
    //resultScreen
    
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
// use extention to localization......
extension String {
    
    var loclaized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    
}
