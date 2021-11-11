//
//  WomenPerfumeViewController.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 03/04/1443 AH.
//

import UIKit

class WomenPerfumeViewController: UIViewController {

    var womenPerfume :[Perfume] = []
    @IBAction func addToCartButt(_ sender: UIButton) {
}
    @IBOutlet weak var tableView: UITableView!


override func viewDidLoad() {
    super.viewDidLoad()
    womenPerfume = creatArray()
    tableView.delegate = self
    tableView.dataSource = self
}

func creatArray() -> [Perfume] {
    
    var PerfumeType : [Perfume] = []
    
    let perfume1 = Perfume(perfumeName: "L'Interdit Eau de Givenchy", perfumeSize: 150, perfumePrice: 373.75, perfumeImg:UIImage(named:"wemen1")!)
    let perfume2 = Perfume(perfumeName: "Black Opium Eau de", perfumeSize: 100, perfumePrice: 187.25, perfumeImg: UIImage(named:"wemen2")!)
    let perfume3 = Perfume(perfumeName: "Gucci Bloom Eau De", perfumeSize: 150, perfumePrice: 500.25, perfumeImg:UIImage(named:"wemen3")!)
    let perfume4 = Perfume(perfumeName: "Versace Crystal Noir Eau de", perfumeSize: 100, perfumePrice: 517.50, perfumeImg:UIImage(named:"wemen4")!)
    let perfume5 = Perfume(perfumeName: "CHANEL COCO", perfumeSize: 100 , perfumePrice: 125, perfumeImg:UIImage(named:"wemen5")!)
    
    PerfumeType.append(perfume1)
    PerfumeType.append(perfume2)
    PerfumeType.append(perfume3)
    PerfumeType.append(perfume4)
    PerfumeType.append(perfume5)
    
    return PerfumeType
    
}
}
extension WomenPerfumeViewController: UITableViewDelegate , UITableViewDataSource {
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return womenPerfume.count
}
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let perfume = womenPerfume[indexPath.row]
    let cell = tableView.dequeueReusableCell(withIdentifier: "wemenPerfumeCell") as! WomenPerfumes
    cell.contentCell(perfume : perfume)
    return cell
}
}
//
    
//   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
