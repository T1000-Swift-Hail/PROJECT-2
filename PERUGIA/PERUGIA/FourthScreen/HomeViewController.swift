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
        
        guard let image =  UIImage(named: "1") else {return}
        arrPlate.append(Plate.init(name: "Mountains", description: "Mountain mural", photo: image))
         
        guard let image =  UIImage(named: "2") else {return}
        arrPlate.append(Plate.init(name: "Mountains", description: "Mountain mural", photo: image))
        
        guard let image = UIImage(named: "3") else {return}
        arrPlate.append(Plate.init(name: "Mountains", description: "Mountain mural", photo: image))
        
        guard let image = UIImage(named: "4") else {return}
        arrPlate.append(Plate.init(name: "Beaches", description: "Beach canvas wall art", photo: image))
        
        guard let image = UIImage(named: "5") else {return}
        arrPlate.append(Plate.init(name: "Canvas mural", description: "Beautiful Canvas Wall Painting", photo: image))
        
        guard let image = UIImage(named: "6") else {return}
        arrPlate.append(Plate.init(name: "Girl",  description: "canvas painting", photo: image))
        
        guard let image = UIImage(named: "7") else {return}
        arrPlate.append(Plate.init(name: "Boy", description: "canvas painting", photo: image))
        
        guard let image = UIImage(named: "8") else {return}
        arrPlate.append(Plate.init(name: "Canvas mural", description: "Beautiful Canvas Wall Painting", photo: image))
        
        guard let image = UIImage(named: "9") else {return}
        arrPlate.append(Plate.init(name: "coffee cup", description: "canvas painting", photo: image))
        
        guard let image = UIImage(named: "10") else {return}
        arrPlate.append(Plate.init(name: "love", description: "canvas painting", photo: image))
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPlate.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell") as! HomeTableViewCell
        let Date = arrPlate[indexPath.row]
        cell.setupCell(photo: Date.photo, name: Date.name, description: Date.description)
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
    @IBAction func addFavorite(_ sender: Any) {
    
//        print("button index = \(sender.tag)")
//        sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
    }
}



struct Plate{
    let name: String
//    let price: Double
    let description: String
    let photo: UIImage
}
