//
//  WomenPerfumeViewController.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 03/04/1443 AH.
//

import UIKit

class WomenPerfumeViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBAction func addToCartButt(_ sender: UIButton) {
        let alert = UIAlertController(title: "Added to Cart!", message:"", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: nil))
        
        self.present(alert, animated: true)
                }
    
    @IBOutlet weak var tableView: UITableView!
    var womenPerfume = [Perfume]()
    override func viewDidLoad() {
        super.viewDidLoad()


    
    tableView.delegate = self
    tableView.dataSource = self

    womenPerfume.append(Perfume.init(perfumeName: "L'Interdit Eau de Givenchy", perfumeSize: 100, perfumePrice: 373.75 , perfumeImg:UIImage(named: "wemen1.jpg")!))
    womenPerfume.append(Perfume.init(perfumeName: "Black Opium Eau de", perfumeSize: 100, perfumePrice: 187.25 , perfumeImg:UIImage(named: "wemen2.jpg")!))
    womenPerfume.append(Perfume.init(perfumeName: "Gucci Bloom Eau De", perfumeSize: 100, perfumePrice: 500.25 , perfumeImg:UIImage(named: "wemen3.jpg")!))
    womenPerfume.append(Perfume.init(perfumeName: "Versace Crystal Noir Eau de", perfumeSize: 100, perfumePrice: 517.50 , perfumeImg:UIImage(named: "wemen4.jpg")!))
    womenPerfume.append(Perfume.init(perfumeName: "CHANEL COCO", perfumeSize: 100, perfumePrice: 125 , perfumeImg:UIImage(named: "wemen5.jpg")!))
}

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return womenPerfume.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "wemenPerfumeCell") as! WomenPerfumes
        
        let data = womenPerfume[indexPath.row]
        cell.contentCell(perfumesImage: data.perfumeImg, perfumesName: data.perfumeName, perfumesPrice: data.perfumePrice, perfumesSize: data.perfumeSize)
        return cell
    }
}

struct Perfume {
    
    let perfumeName : String
    let perfumeSize : Int
    let perfumePrice : Double
    let perfumeImg : UIImage
}
    
