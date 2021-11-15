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
        
        arrPhone.append(Phone.init(name:NSLocalizedString("Case Iphone 13", comment: "")  , price: 70, photo: UIImage(named: "case")!))
        arrPhone.append(Phone.init(name:NSLocalizedString("Case Iphone 12", comment: "") , price: 40, photo: UIImage(named: "case1")!))
        arrPhone.append(Phone.init(name:NSLocalizedString("charge", comment: "") , price: 240, photo: UIImage(named: "charge")!))
        arrPhone.append(Phone.init(name:NSLocalizedString("Headphones1", comment: "") , price: 550, photo: UIImage(named: "Headphones1")!))
        arrPhone.append(Phone.init(name:NSLocalizedString("Headphones2", comment: "") , price: 600, photo: UIImage(named: "Headphones2")!))
        arrPhone.append(Phone.init(name:NSLocalizedString("Bluetooth headset", comment: "") , price: 400, photo: UIImage(named: "Bluetooth headset")!))
        arrPhone.append(Phone.init(name:NSLocalizedString("bluetooth earbuds", comment: "") , price: 300, photo: UIImage(named: "bluetooth earbuds")!))
        arrPhone.append(Phone.init(name:NSLocalizedString("Glass Protector", comment: "") , price: 120, photo: UIImage(named: "Glass Protector")!))
    }
   
    // Funcation add to tableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection indexPath: Int) -> Int {
        return arrPhone.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell") as! phoneTableViewCell
        let data = arrPhone[indexPath.row]
        cell.contentCell(photo: data.photo, name: data.name, price: data.price)
        return cell
    }
    
//    func showAlertView () {
//           let alert = UIAlertController (title: "title", message: "my alert messing", preferredStyle: .alert)
//           alert .addAction(UIAlertAction(title: "Sign In", style: .default, handler: {action in
//               print ("action 1 click")
//           }))
//           alert.addAction(UIAlertAction(title: "Cancle", style: .cancel, handler: nil))
//           present (alert , animated: true , completion: nil)
//       }
}


