//
//  SplashVC.swift
//  DecAntique
//
//  Created by Dalal AlSaidi on 04/04/1443 AH.

//

import UIKit

class SplashVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        perform(#selector(gotoLogin), with: self, afterDelay: 1)
    }
    
    @objc func gotoLogin() {
        gotoVC("AuthNav", true)
    }

}
