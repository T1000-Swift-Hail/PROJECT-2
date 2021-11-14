//
//  HomePerfumeViewController.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 04/04/1443 AH.
//

import UIKit

class HomePerfumeViewController: UIViewController {
    
// create array for data
var homePerfume :[Perfume] = []
    
@IBOutlet weak var tableview: UITableView!

    
override func viewDidLoad() {
 super.viewDidLoad()
 homePerfume = creatArray()
        
tableview.delegate = self
tableview.dataSource = self
    
    }
// creat data and return  into array
func creatArray() -> [Perfume] {
        
var PerfumeType : [Perfume] = []
        
let perfume1 = Perfume(perfumeName: "Home Perfume Rituals".localized, perfumeSize: 150, perfumePrice: 66.75, perfumeImg:UIImage(named:"homeperfume2")!)
let perfume2 = Perfume(perfumeName: "Home Perfume Chakra".localized, perfumeSize: 200, perfumePrice: 187.25, perfumeImg:UIImage(named:"homeperfume3")!)
let perfume3 = Perfume(perfumeName: "Home Perfume Clasic".localized, perfumeSize: 150, perfumePrice: 135.25, perfumeImg: UIImage(named:"homeperfume4")!)
let perfume4 = Perfume(perfumeName: "Home Perfume Golden Orchid".localized, perfumeSize: 100, perfumePrice: 400.00, perfumeImg:UIImage(named:"homeperfume5")!)
let perfume5 = Perfume(perfumeName: "Home Perfume Areon".localized, perfumeSize: 100, perfumePrice: 125, perfumeImg:UIImage(named:"homeperfume2")!)
        
        PerfumeType.append(perfume1)
        PerfumeType.append(perfume2)
        PerfumeType.append(perfume3)
        PerfumeType.append(perfume4)
        PerfumeType.append(perfume5)
        
        return PerfumeType
        
         }
    }

extension HomePerfumeViewController: UITableViewDelegate , UITableViewDataSource {
        
// return the number of rows
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homePerfume.count
    }
//Configure the cell...
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  let perfume = homePerfume[indexPath.row]
  let cell = tableView.dequeueReusableCell(withIdentifier: "homePerfumeCell") as!  HomePerfumes
  cell.contentCell(perfume: perfume)
        return cell
         }
    }
    























/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */


