//
//  ResutlScreenViewController.swift
//  Abjd Test
//
//  Created by noyer altamimi on 09/04/1443 AH.
//

import UIKit

class ResutlScreenViewController: UIViewController {
//for resutl screen.
    @IBOutlet weak var scoreLabel: UILabel!
    var totalPoints : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scoreLabel.text = "\(totalPoints ?? 0)"
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
