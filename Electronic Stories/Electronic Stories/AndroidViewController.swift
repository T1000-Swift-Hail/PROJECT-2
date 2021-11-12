//
//  AndroidViewController.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 07/04/1443 AH.
//

import UIKit

class AndroidViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
 
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrAndroid = [Galaxy]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    
        arrAndroid.append(Galaxy.init(name:"Case Galaxy 13" , price: 70, photo: UIImage(named: "case Galaxy1")!))
        arrAndroid.append(Galaxy.init(name:"Case Galaxy 12" , price: 120, photo: UIImage(named: "case Galaxy2")!))
        arrAndroid.append(Galaxy.init(name:"Smart Watch Galaxy1" , price: 1200, photo: UIImage(named: "Smart Galaxy1")!))
        arrAndroid.append(Galaxy.init(name:"Headset Galaxy1" , price: 600, photo: UIImage(named: "GalaxyHeadset1")!))
        arrAndroid.append(Galaxy.init(name:"Headset Galaxy1" , price: 550, photo: UIImage(named: "GalaxyHeadset2")!))
        arrAndroid.append(Galaxy.init(name:"Smart Watch Galaxy2" , price: 900, photo: UIImage(named: "Smart Galaxy.1JPG")!))
        arrAndroid.append(Galaxy.init(name:"bluetooth earbuds" , price: 300, photo: UIImage(named: "bluetooth earbuds")!))
        arrAndroid.append(Galaxy.init(name:"Case Galaxy 11" , price: 100, photo: UIImage(named: "case11111")!))
    
   
    
    performSegue(withIdentifier: "Galaxy", sender: nil)
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AndroidViewController
        vc.arrAndroid = arrAndroid
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrAndroid.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! AndroidTableViewCell
        let data = arrAndroid[indexPath.row]
        cell.myCell(photo: data.photo, name: data.name, price: data.price)
        return cell
    }
        
    }


  


