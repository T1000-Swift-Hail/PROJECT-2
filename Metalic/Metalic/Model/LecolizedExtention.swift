//
//  LecolizedExtention.swift
//  Metalic
//
//  Created by Anas Hamad on 10/04/1443 AH.
//

import UIKit

class LecolizedExtention: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    }
extension String{
    var localized  : String {
        return NSLocalizedString(self, comment: "")
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
