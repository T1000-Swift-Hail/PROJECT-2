//
//  BookDetailViewController.swift
//  library free
//
//  Created by موضي الحربي on 05/04/1443 AH.
//

import UIKit

class BookDetailViewController: UIViewController {

    @IBOutlet weak var imageBook : UIImageView!
    @IBOutlet weak var titleBook : UILabel!
    @IBOutlet weak var descrbtionBook : UILabel!
    @IBOutlet weak var ratingImag: UIImageView!
    var book : Book!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageBook.image = book.image
        titleBook.text = book.name
        descrbtionBook.text = book.description
        
        switch book.rating {
            
        case 2 :
            ratingImag.image =  UIImage(named: "rating2")
        case 3 :
            ratingImag.image = UIImage(named: "rating3")
        case 4 :
            ratingImag.image = UIImage(named: "rating4")
        case 5 :
            ratingImag.image = UIImage(named: "rating5")
        default:
            ratingImag.image = UIImage(named: "rating2")
        }
        
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
