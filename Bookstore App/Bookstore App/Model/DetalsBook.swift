//
//  DetalsBook.swift
//  Bookstore App
//
//  Created by طلال عبيدالله دعيع القلادي on 09/11/2021.
//

import UIKit
//Details of scintist lable with image


class DetalsBook: UIViewController {

    @IBOutlet weak var titleBook: UILabel!
    
    @IBOutlet weak var bookDiscrption: UILabel!
    @IBOutlet weak var bookImage: UIImageView!
    var setTitleBook = ""
    var book : Book!
    
    //func to change font and size of description
    override func viewDidLoad() {
        super.viewDidLoad()
        titleBook.text = book.name
        titleBook.font = UIFont(name: "Amiri-Bold", size: 20)
        bookDiscrption.text = book.description
        bookDiscrption.font = UIFont(name: "Amiri-Regular", size: 14)
        bookImage.image = book.pic
        
        // Do any additional setup after loading the view.
    }
    

}
