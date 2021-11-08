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
        tableView.delegate = self
        arrPhone.append(Phone.init(name:"Glass Protector" , price: 120, photo: UIImage(named: "Glass Protector")!))
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection indexPath: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "phoneTableViewCell") as! phoneTableViewCell
        
        return cell
    }
}

struct Phone {
    let name : String
    let price : Double
    let photo :UIImage
}
