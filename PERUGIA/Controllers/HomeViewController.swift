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
        
        guard let image =  UIImage(named: "1img") else {return}
        arrPlate.append(Plate.init(name: "Love".localized, description: "Beautiful abstract art".localized, photo: image))
         
        guard let image =  UIImage(named: "2img") else {return}
        arrPlate.append(Plate.init(name: "People".localized, description: "Beautiful abstract art".localized, photo: image))
        
        guard let image = UIImage(named: "3img") else {return}
        arrPlate.append(Plate.init(name: "Two girls".localized, description: "Beautiful abstract art".localized, photo: image))
        
        guard let image = UIImage(named: "4img") else {return}
        arrPlate.append(Plate.init(name: "People".localized, description: "Beautiful abstract art".localized, photo: image))
        
        guard let image = UIImage(named: "5img") else {return}
        arrPlate.append(Plate.init(name: "people".localized, description: "Beautiful abstract art".localized, photo: image))
        
        guard let image = UIImage(named: "6img") else {return}
        arrPlate.append(Plate.init(name: "Golden girl".localized,  description: "Beautiful abstract art".localized, photo: image))
        
//        guard let image = UIImage(named: "7img") else {return}
//        arrPlate.append(Plate.init(name: "Boy", description: "canvas painting", photo: image))
//        
        guard let image = UIImage(named: "8img") else {return}
        arrPlate.append(Plate.init(name: "Girl".localized, description: "Beautiful abstract art".localized, photo: image))
        
        guard let image = UIImage(named: "9img") else {return}
        arrPlate.append(Plate.init(name: "Skulls".localized, description: "Beautiful abstract art".localized, photo: image))
        
}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPlate.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell") as! HomeTableViewCell
        let Date = arrPlate[indexPath.row]
        cell.setupCell(photo: Date.photo, name: Date.name, description: Date.description)
      
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell index = \(indexPath.row)")
        
    }
   
}


struct Plate{
    let name: String
    let description: String
    let photo: UIImage
}
