//
//  HomePerfumeViewController.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 04/04/1443 AH.
//

import UIKit

class HomePerfumeViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBAction func addToCart(_ sender: UIButton) {
        let alert = UIAlertController(title: "Added to Cart!", message:"", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: nil))
        
        self.present(alert, animated: true)
                }
           
        
//        (title: “”, message: “It’s recommended you bring your towel before continuing.“, preferredStyle: .alert)
//
    @IBOutlet weak var tableview: UITableView!
    var homePerfume = [Perffume]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
       
        homePerfume.append(Perffume.init(perfumeName: "Home Perfume", perfumeSize: 100, perfumePrice: 135.00, perfumeImg:UIImage(named: "homeperfume2.jpg")!))
        homePerfume.append(Perffume.init(perfumeName: "Home Perfume", perfumeSize: 150, perfumePrice: 120.66, perfumeImg: UIImage(named: "homeperfume3.jpg")!))
        homePerfume.append(Perffume.init(perfumeName: "Home Perfume", perfumeSize: 100, perfumePrice: 35.90, perfumeImg: UIImage(named: "homeperfume4.jpg")!))
        homePerfume.append(Perffume.init(perfumeName: "Home Perfume", perfumeSize: 200, perfumePrice: 130.88, perfumeImg: UIImage(named: "homeperfume5.jpg")!))
        
        // Do any additional setup after loading the view.
    }
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return homePerfume.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "homePerfumeCell") as! HomePerfumes
    
    let data = homePerfume[indexPath.row]
    cell.contentCell(perfumesImage: data.perfumeImg, perfumesName: data.perfumeName, perfumesPrice: data.perfumePrice, perfumesSize: data.perfumeSize)
    return cell
}
}


struct Perffume{
    
    let perfumeName : String
    let perfumeSize : Int
    let perfumePrice : Double
    let perfumeImg : UIImage
}




















    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


