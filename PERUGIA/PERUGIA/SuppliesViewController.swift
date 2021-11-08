//
//  SuppliesViewController.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 03/04/1443 AH.
//

import UIKit

class SuppliesViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
   var arrSupplies = [Supplies]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        arrSupplies.append(Supplies.init(name: "paint brushes", price: 20, description: "paintbrush size: 100 - 50 - 40 - 25 ", photo: UIImage(named: "paint brushes")!))
        
        arrSupplies.append(Supplies.init(name: "drwing canves", price: 30, description: "Canvas board with stand in different sizes", photo: UIImage(named: "drwing canves")!))
        
        arrSupplies.append(Supplies.init(name: "oil colors", price: 25, description: "12 colors oil colors", photo: UIImage(named: " oil colors")!))
        
        arrSupplies.append(Supplies.init(name: "oil mediums", price: 35, description: "oily mediums 75 ml", photo: UIImage(named: "oil mediums")!))
        
        arrSupplies.append(Supplies.init(name: "resin", price: 65, description: "The best types of resin", photo: UIImage(named: "resin1")!))
        
        arrSupplies.append(Supplies.init(name: "resin", price: 220, description: "The best types of resin", photo: UIImage(named: "resin2")!))
        
        arrSupplies.append(Supplies.init(name: "drwing kinves", price: 12, description: "set of 5 painting knives", photo: UIImage(named: "drwing kinves")!))
        
        arrSupplies.append(Supplies.init(name: "acrylic colors", price: 19, description: "High quality acrylic colors", photo: UIImage(named: "acrylic colors")!))
        
        arrSupplies.append(Supplies.init(name: "peneils", price: 39, description: "a set of 40 pcs of drawing pens", photo: UIImage(named: "peneils")!))
        
        arrSupplies.append(Supplies.init(name: "drawing book", price: 29, description: "B4 size sketchbook", photo: UIImage(named: "drawing book")!))
        
        arrSupplies.append(Supplies.init(name: "golde leaf", price: 18, description: "the gold leaf highlights the beauty and details of the painting", photo: UIImage(named: "golde leaf")!))

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrSupplies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "suppliesCelll") as! SuppliesTableViewCell
        let data = arrSupplies[indexPath.row]
        cell.setupCell(photo: data.photo, name: data.name, price: data.price, description: data.description)
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell index = \(indexPath.row)")
    }

}
struct Supplies{
    let name : String
    let price : Double
    let description : String
    let photo : UIImage
}
