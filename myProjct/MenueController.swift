//
//  DiscripCall.swift
//  Marssai
//
//  Created by Huda N S on 03/04/1443 AH.
//

import UIKit

class MenueController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableViwe: UITableView!
    //    @IBOutlet weak var Calls: UITableView!
    var arrayProduct = [Pruducts]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViwe.delegate = self
        tableViwe.dataSource = self
        
        arrayProduct.append(Pruducts.init(name: "Urmaki sushi", price: 73.00 , discrip: "Delicious rumaki sushi in the Marssai way", photo: UIImage(named: "Soshi1")!))
        arrayProduct.append(Pruducts.init(name: "Oshi Sushi", price: 80.00 , discrip: "For sushi lovers with original flavor", photo: UIImage(named: "img13")!))
        arrayProduct.append(Pruducts.init(name: "Hoso Maki Roll", price: 88.00 , discrip: "Sushi in Marssai way", photo: UIImage(named: "img23")!))
        arrayProduct.append(Pruducts.init(name: "Crab salad", price: 44.00 , discrip: "Salad with a special Marssai flavor", photo: UIImage(named: "Soshi1")!))
        arrayProduct.append(Pruducts.init(name: "Fettuccine", price: 45.00 , discrip: "Fettuccine with italian flavor", photo: UIImage(named: "img2")!))
        arrayProduct.append(Pruducts.init(name: "Risotto Seafood", price: 55.00 , discrip: "Tasting pleasure in Marssai", photo: UIImage(named: "img9")!))
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayProduct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let call = tableViwe.dequeueReusableCell(withIdentifier: "MenuCell") as! MenuCell
        let data = arrayProduct[indexPath.row]
        call.setupCall(photo: data.photo, name: data.name, price: data.price, discrip: data.discrip)
        return call
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}

struct Pruducts {
    let name : String
    let price : Double
    let discrip : String
    let photo : UIImage
}
