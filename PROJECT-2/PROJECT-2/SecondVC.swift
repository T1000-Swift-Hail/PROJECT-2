//
//  SecondVC.swift
//  PROJECT-2
//
//  Created by mona aleid on 05/04/1443 AH.
//

import UIKit

class SecondVC: UIViewController {

    
    @IBOutlet weak var imageSort: UIImageView!
    @IBOutlet weak var nameSort: UILabel!
    @IBOutlet weak var desSort: UILabel!
    
    var imageSortSet: UIImage?
    var nameSortSet: String?
    var desSortSet: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageSort.image = imageSortSet
        nameSort.text = nameSortSet
        desSort.text = desSortSet
        
        print("dessort .......")
        print(desSortSet ?? "")
        
         
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
