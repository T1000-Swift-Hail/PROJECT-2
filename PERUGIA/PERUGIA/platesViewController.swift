//
//  platesViewController.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 02/04/1443 AH.
//

import UIKit
struct Plates{
    var name :String
    var pirce :String
    var image :Int
    var panelSize :String
}


class PlatesViewController: UIViewController {

    @IBAction func muralPaintings(_ sender: Any) {
        let plate : [Plates] = [
        Plates(name: "aryaf", pirce: "300SR", image: 1, panelSize: "60×90")]
            
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
