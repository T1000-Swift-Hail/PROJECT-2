//
//  HomePerfumeViewController.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 04/04/1443 AH.
//

import UIKit

class HomePerfumeViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var homePerfume :[Perfume] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homePerfume = creatArray()
        
        tableview.delegate = self
        tableview.dataSource = self
    }

    func creatArray() -> [Perfume] {
        
        var PerfumeType : [Perfume] = []
        
        let perfume1 = Perfume(perfumeName: "Home Perfume", perfumeSize: 150, perfumePrice: 66.75, perfumeImg:UIImage(named:"homeperfume2")!)
        let perfume2 = Perfume(perfumeName: "Home Perfume", perfumeSize: 200, perfumePrice: 187.25, perfumeImg:UIImage(named:"homeperfume3")!)
        let perfume3 = Perfume(perfumeName: "Home Perfume", perfumeSize: 150, perfumePrice: 135.25, perfumeImg: UIImage(named:"homeperfume4")!)
        let perfume4 = Perfume(perfumeName: "Home Perfume", perfumeSize: 100, perfumePrice: 400.00, perfumeImg:UIImage(named:"homeperfume5")!)
        let perfume5 = Perfume(perfumeName: "Home Perfume", perfumeSize: 100, perfumePrice: 125, perfumeImg:UIImage(named:"homeperfume2")!)
        
        PerfumeType.append(perfume1)
        PerfumeType.append(perfume2)
        PerfumeType.append(perfume3)
        PerfumeType.append(perfume4)
        PerfumeType.append(perfume5)
        
        return PerfumeType
        
    }
    }

    extension HomePerfumeViewController: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homePerfume.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let perfume = homePerfume[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "homePerfumeCell") as!  HomePerfumes
        cell.contentCell(perfume: perfume)
        return cell
    }
    }
    
//

//   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    let alert = UIAlertController(title: "Added to Cart!", message:"", preferredStyle: .alert)
//
//    alert.addAction(UIAlertAction(title: "Done", style: .default, handler: nil))
//
//   self.present(alert, animated: true)
//  }
//}























/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */


