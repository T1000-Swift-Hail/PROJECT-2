//
//  phoneViewController.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 03/04/1443 AH.
//

import UIKit



class phoneViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
 
    
  
    @IBOutlet weak var tableView: UITableView!
    var arrPhone = [Phone]()
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        arrPhone.append(Phone.init(name:"Glass Protector" , price: 120, photo: UIImage(named: "Glass Protector")!))
        arrPhone.append(Phone.init(name:"Case Iphone 13" , price: 70, photo: UIImage(named: "case")!))
        arrPhone.append(Phone.init(name:"Case Iphone 12" , price: 40, photo: UIImage(named: "case1")!))
        arrPhone.append(Phone.init(name:"charge" , price: 240, photo: UIImage(named: "charge")!))
        arrPhone.append(Phone.init(name:"Headphones1" , price: 550, photo: UIImage(named: "Headphones1")!))
        arrPhone.append(Phone.init(name:"Headphones2" , price: 600, photo: UIImage(named: "Headphones2")!))
        arrPhone.append(Phone.init(name:"Bluetooth headset" , price: 400, photo: UIImage(named: "Bluetooth headset")!))
        arrPhone.append(Phone.init(name:"bluetooth earbuds" , price: 300, photo: UIImage(named: "bluetooth earbuds")!))
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection indexPath: Int) -> Int {
        return arrPhone.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell") as! phoneTableViewCell
        let data = arrPhone[indexPath.row]
        cell.contentCell(photo: data.photo, name: data.name, price: data.price)
        return cell
    }
    @IBAction func addCart(_ sender: UIButton) {
//        let alert = UIAlertController(title: "ADD To Cart", message: nil, preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: nil))
//        self.present(alert, animated: true)
    }
}


