//
//  DiscripCall.swift
//  Marssai
//
//  Created by Huda N S on 03/04/1443 AH.
//

import UIKit


class MenueController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableViwe: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViwe.delegate = self
        tableViwe.dataSource = self
        
        //Adding products to the TableView using the Stract
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Urmaki sushi", comment: ""), price: 73.00 , discrip: NSLocalizedString("detailsProduct1", comment: ""), photo: UIImage(named: "Soshi1")!))
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Oshi Sushi", comment: ""), price: 80.00 , discrip: NSLocalizedString("detailsProduct2", comment: ""), photo: UIImage(named: "img13")!))
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Marssai Sushi Cocktail", comment: ""), price: 98.00 , discrip: NSLocalizedString("detailsProduct3", comment: ""), photo: UIImage(named: "img8")!))
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Hoso Maki Roll", comment: "") , price: 88.00 , discrip: NSLocalizedString("detailsProduct4", comment: ""), photo: UIImage(named: "img23")!))
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Crab salad", comment: ""), price: 44.00 , discrip: NSLocalizedString("detailsProduct5", comment: ""), photo: UIImage(named: "Soshi1")!))
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Shrimp", comment:"" ), price: 44.00 , discrip:NSLocalizedString("detailsProduct6", comment: ""), photo: UIImage(named: "img4")!))
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Chicken tikka masala", comment:"") , price: 77.00 , discrip: NSLocalizedString("detailsProduct7", comment:"" ), photo: UIImage(named: "img12")!))
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Fettuccine", comment: ""), price: 45.00 , discrip: NSLocalizedString("detailsProduct8", comment:""), photo: UIImage(named: "img2")!))
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Risotto Seafood", comment: "") , price: 55.00 , discrip: NSLocalizedString("detailsProduct9", comment: ""), photo: UIImage(named: "img9")!))
        arrayProduct.append(Pruducts.init(name:NSLocalizedString("Beef Lasagna", comment:""), price: 65.00 , discrip: NSLocalizedString("detailsProduct10", comment: ""), photo: UIImage(named: "img3")!))
        arrayProduct.append(Pruducts.init(name:NSLocalizedString("Appetizer mix", comment: "") , price: 32.00 , discrip:NSLocalizedString("detailsProduct12", comment: ""), photo: UIImage(named: "img14")!))
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Tabbouleh", comment: ""), price: 38.00 , discrip:NSLocalizedString("detailsProduct13", comment: "" ), photo: UIImage(named: "img7")!))
    }
    //function to display products in Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayProduct.count
    }
    //Insert the cell at a specific location in the table view.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let call = tableViwe.dequeueReusableCell(withIdentifier: "MenuCell") as! MenuCell
        let data = arrayProduct[indexPath.row]
        call.setupCell(photo: data.photo, name: data.name, price: data.price, discrip: data.discrip)
        return call
    }
    //function of determining the width and height of the cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
