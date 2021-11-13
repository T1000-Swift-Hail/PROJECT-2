//
//  profileViewController.swift
//  PROJECT-2
//
//  Created by mona aleid on 03/04/1443 AH.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
        
    @IBAction func loginTapped(_ sender: Any) {
    }
    @IBAction func createAccountTapped(_ sender: Any) {
    }

            //let storyboard = UIStoryboard(name: "Main", bundle: nil)
            //let vc = storyboard.instantiateViewController(withIdentifier: "signUp")
            //vc.modalPresentationStyle = .overFullScreen
            //present(vc, animated: true)
        }
        
        
        
        
        
    //@IBOutlet weak var email: UITextField!
       // @IBOutlet weak var password: UITextField!
       // @IBOutlet weak var passwordConfirm: UITextField!
        //...
        //@IBAction func signUpAction(_ sender: Any) {
        //if password.text != passwordConfirm.text {
        //let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
       // let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
       // alertController.addAction(defaultAction)
       // self.present(alertController, animated: true, completion: nil)
             //   }
       // else{
       // Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (user, error) in
         //if error == nil {
          // self.performSegue(withIdentifier: "signupToHome", sender: self)
                  //      }
        // else{
          // let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
          // let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                            
           // alertController.addAction(defaultAction)
          //  self.present(alertController, animated: true, completion: nil)
            //   }
                   // }
              //}
       // }
        // Do any additional setup after loading the view.
    //}
    //Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (user, error) in
   // ...
    //}
    
    //@IBAction func loginAction(_ sender: Any) {
          
    //Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user, error) in
      // if error == nil{
         //self.performSegue(withIdentifier: "loginToHome", sender: self)
                   //   }
        //else{
        // let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
        // let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                        
          //alertController.addAction(defaultAction)
         // self.present(alertController, animated: true, completion: nil)
             //}
    //}
            
    //}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


