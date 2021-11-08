//
//  MenPerfumesViewController.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 03/04/1443 AH.
//

import UIKit

class MenPerfumesViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var menPerfume = [perfume]()
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        menPerfume.append(perfume.init(perfumeName: "Cartier Declaration", perfumeSize: 100, perfumePrice: 373.75 , perfumeImg:UIImage(named: "menPerfum1.jpg")!))
        menPerfume.append(perfume.init(perfumeName: "Excellence Jaguar", perfumeSize: 100, perfumePrice: 187.25 , perfumeImg:UIImage(named: "menPerfume2.jpg")!))
        menPerfume.append(perfume.init(perfumeName: "Tom Ford Noir", perfumeSize: 100, perfumePrice: 500.25 , perfumeImg:UIImage(named: "menPerfume3.jpg")!))
        menPerfume.append(perfume.init(perfumeName: "Eau Sauvage Parfum by Dior", perfumeSize: 100, perfumePrice: 517.50 , perfumeImg:UIImage(named: "menPerfume4.jpg")!))
        menPerfume.append(perfume.init(perfumeName: "CALVIN KLEIN", perfumeSize: 100, perfumePrice: 125 , perfumeImg:UIImage(named: "menPerfume5.jpg")!))
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menPerfume.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "perfumeMenCell") as! MenPerfumes
        let data = menPerfume[indexPath.row]
        cell.contentCell(perfumesImage: data.perfumeImg, perfumesName: data.perfumeName, perfumesPrice: data.perfumePrice, perfumesSize: data.perfumeSize)
        return cell
    }
}

struct perfume {
    
    let perfumeName : String
    let perfumeSize : Int
    let perfumePrice : Double
    let perfumeImg : UIImage
}
