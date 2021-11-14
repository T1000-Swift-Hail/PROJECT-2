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
   

    @IBOutlet weak var bookFav: UIButton!
    
    var book : Book!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageBook.image = book.image
        titleBook.text = book.name
        descrbtionBook.text = book.description
        
        switch book.rating {
            
        case 2 :
            ratingImag.image =  UIImage(named: "rating4")
        case 3 :
            ratingImag.image = UIImage(named: "rating3")
        case 4 :
            ratingImag.image = UIImage(named: "rating4")
        case 5 :
            ratingImag.image = UIImage(named: "rating5")
        default:
            ratingImag.image = UIImage(named: "rating5")
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func AddToFavorites(_ sender: UIBarButtonItem) {
        
        
        sender.tintColor = UIColor.red
        myFavorites.list.append(book)
        print(myFavorites.list  )
        
    }
    

    
@IBAction func addToFavoritesNow(_ sender: UIButton) {
        print("kjfkljdlsk")
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
