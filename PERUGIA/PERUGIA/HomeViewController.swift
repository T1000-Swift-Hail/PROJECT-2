//
//  HomeViewController.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 02/04/1443 AH.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    

    @IBOutlet weak var tableView: UITableView!
    var arrPlate = [Plate]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        arrPlate.append(Plate.init(name: "mountains", price: 300, description: "the1", photo: UIImage(named: "1")!))
        arrPlate.append(Plate.init(name: "2", price: 300, description: "the2", photo: UIImage(named: "2")!))
        arrPlate.append(Plate.init(name: "3", price: 300, description: "the3", photo: UIImage(named: "3")!))
        arrPlate.append(Plate.init(name: "4", price: 300, description: "the4", photo: UIImage(named: "4")!))
        arrPlate.append(Plate.init(name: "5", price: 300, description: "the5", photo: UIImage(named: "5")!))
        
        
        arrPlate.append(Plate.init(name: "6", price: 300, description: "the", photo: UIImage(named: "6")!))
        arrPlate.append(Plate.init(name: "7", price: 300, description: "the2", photo: UIImage(named: "7")!))
        arrPlate.append(Plate.init(name: "8", price: 300, description: "the3", photo: UIImage(named: "8")!))
        arrPlate.append(Plate.init(name: "9", price: 300, description: "the4", photo: UIImage(named: "9")!))
        arrPlate.append(Plate.init(name: "10", price: 300, description: "the5", photo: UIImage(named: "10")!))
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPlate.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell") as! HomeTableViewCell
        let Date = arrPlate[indexPath.row]
        cell.setupCell(photo: Date.photo, name: Date.name, price: Date.price, description: Date.description)
       // cell.btnAddFavorite.tag = indexPath.row
    // cell.btnAddfavorite.addTarget(self, action: #selector(AddFavorite(sender :)),
      // for: .touchUpInside)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell index = \(indexPath.row)")
        
    }
    @objc
    func addFavorite(sender:UIButton){
        print("button index = \(sender.tag)")
        sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
    }
}


struct Plate{
    let name: String
    let price: Double
    let description: String
    let photo: UIImage
}
