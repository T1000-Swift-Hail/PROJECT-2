//
//  MenPerfumesViewController.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 03/04/1443 AH.
//

import UIKit

class MenPerfumesViewController: UIViewController {
  
// create array for data
 var menPerfume :[Perfume] = []
    
@IBOutlet weak var tableView: UITableView!

    
override func viewDidLoad() {
super.viewDidLoad()
menPerfume = creatArray()
tableView.delegate = self
tableView.dataSource = self
     
      }
    // creat data and return  into array 
func creatArray() -> [Perfume] {
        
var PerfumeType : [Perfume] = []
        
let perfume1 = Perfume(perfumeName:"Cartier Declaration".localized , perfumeSize: 150, perfumePrice: 373.75, perfumeImg:UIImage(named:"menPerfum1")!)
let perfume2 = Perfume(perfumeName: "Excellence Jaguar".localized, perfumeSize: 100 , perfumePrice: 187.25 , perfumeImg: UIImage(named:"menPerfume2")!)
let perfume3 = Perfume(perfumeName: "Tom Ford Noir".localized, perfumeSize: 150, perfumePrice: 500.25 , perfumeImg: UIImage(named:"menPerfume3")!)
let perfume4 = Perfume(perfumeName: "Eau Sauvage Parfum by Dior".localized, perfumeSize: 100, perfumePrice: 500.55, perfumeImg: UIImage(named:"menPerfume4")!)
let perfume5 = Perfume(perfumeName: "CALVIN KLEIN".localized, perfumeSize: 100, perfumePrice: 373.75, perfumeImg: UIImage(named:"menPerfume5")!)
        
 PerfumeType.append(perfume1)
 PerfumeType.append(perfume2)
 PerfumeType.append(perfume3)
 PerfumeType.append(perfume4)
 PerfumeType.append(perfume5)
        
        return PerfumeType
        
    }
}


extension MenPerfumesViewController: UITableViewDelegate , UITableViewDataSource {
    
// return the number of rows
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menPerfume.count
    }
    
//Configure the cell...
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  let perfume = menPerfume[indexPath.row]
  let cell = tableView.dequeueReusableCell(withIdentifier: "perfumeMenCell") as! MenPerfumes
  cell.contentCell(perfume: perfume)
        return cell
    }
}


            
    



