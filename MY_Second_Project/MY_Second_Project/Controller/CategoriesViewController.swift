//
//  CategoriesViewController.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 04/04/1443 AH.
//

import UIKit


class CategoriesViewController: UIViewController {

    override func viewDidLoad() {
       super.viewDidLoad()
     }
    

    @IBAction func menPerfumeButt(_ sender: UIButton) {
        performSegue(withIdentifier: "MenPerfumes", sender: nil)
        
    }
    
    
    @IBAction func womenPerfumeButt(_ sender: UIButton) {
        performSegue(withIdentifier: "WomenPerfume" , sender: nil)
    }
    
    
    @IBAction func homePerfumeButt(_ sender: UIButton) {
        performSegue(withIdentifier: "HomePerfume", sender: nil)
        
    }
   
   }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


