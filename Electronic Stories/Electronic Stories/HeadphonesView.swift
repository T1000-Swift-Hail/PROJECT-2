//
//  HeadphonesView.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 04/04/1443 AH.
//

import UIKit

struct Headphones {
    let name : String
    let price : Double
    let photo :UIImage
}

class HeadphonesView: UIViewController , UITableViewDelegate, UITableViewDataSource{
 

    @IBOutlet weak var tableView: UITableView!
    var arrHeadPhone = [Headphones]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        arrHeadPhone.append(Headphones.init(name:"Headphones1" , price: 550, photo: UIImage(named: "Headphones1")!))
        arrHeadPhone.append(Headphones.init(name:"Headphones2" , price: 600, photo: UIImage(named: "Headphones2")!))
        arrHeadPhone.append(Headphones.init(name:"Bluetooth headset" , price: 400, photo: UIImage(named: "Bluetooth headset")!))
        arrHeadPhone.append(Headphones.init(name:"bluetooth earbuds" , price: 300, photo: UIImage(named: "bluetooth earbuds")!))
   
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection indexPath: Int) -> Int {
        return arrHeadPhone.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "headphonecell") as! HeadPhoneTableViewCell
        let data = arrHeadPhone[indexPath.row]
        cell.contentCell(photo: data.photo, name: data.name, price: data.price)
        return cell
    }
}



