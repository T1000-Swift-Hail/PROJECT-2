//
//  sortingGuideViewController.swift
//  PROJECT-2
//
//  Created by mona aleid on 05/04/1443 AH.
//

import UIKit

class sortingGuideViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //using array for the table view which is contains of two lables and img and use segue and swich to connect each cell with other cells
    var arrSorts = ["Plastic".localaized, "Nylon".localaized, "Paper".localaized , "Cans".localaized ]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var imageSortSet: UIImage?
    var nameSortSet: String?
    var desSortSet: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrSorts.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Plastic", for: indexPath) as! SortingGuideCell
            cell.nameSort.text = arrSorts[indexPath.row]
            return cell
            
        }
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            print(arrSorts[indexPath.row])
            
            switch indexPath.row {
            case 0:
                imageSortSet = UIImage(named: "plasticPic")
                nameSortSet = "Plastic".localaized
                desSortSet = "Plastic recycling refers to the process of recovering waste or scrap plastic and reprocessing the materials into functional and useful products. This activity is known as the plastic recycling process. The goal of recycling plastic is to reduce high rates of plastic pollution while putting less pressure on virgin materials to produce brand new plastic products. This approach helps to conserve resources and diverts plastics from landfills or unintended destinations such as oceans.".localaized
            case 1:
                imageSortSet = UIImage(named: "nylonPic")
                nameSortSet = "Nylon".localaized
                desSortSet = "Nylon is a type of synthetic fiber fabric like polyester, made from petroleum products. Nylon was the first fabric made entirely in a laboratory and its invention represents the dawn of the age of synthetics.Nylon is a type of synthetic fiber fabric like polyester, made from petroleum products. Nylon was the first fabric made entirely in a laboratory and its invention represents the dawn of the age of synthetics.".localaized
            case 2:
                imageSortSet = UIImage(named: "paperPic")
                nameSortSet = "Paper".localaized
                desSortSet = "process by which waste paper is turned into new paper products. It has a number of important benefits: It saves waste paper from occupying homes of people and producing methane as it breaks down. Because paper fibre contains carbon (originally absorbed by the tree from which it was produced), recycling keeps the carbon locked up for longer and out of the atmosphere.he paper is then washed to remove any film, glue, ink and other contaminants using soapy water. ".localaized
            case 3:
                imageSortSet = UIImage(named: "cansPic")
                nameSortSet = "Cans".localaized
                desSortSet = "Recycling aluminium uses only around 5% of the energy and emissions needed to make it from the raw material bauxite. The metal can be recycled without loss of properties, so getting the aluminium recycling habit is one of the best things we can do for the environment. Steel can also be recycled time and time again without loss of quality; by simply recycling our steel cans we can conserve non-renewable fossil fuels, reduce the consumption of energy and the emission of gasses like carbon dioxide into the atmosphere.".localaized
            default:
                print(" ")
            }
            
            performSegue(withIdentifier: "details", sender: nil)
    
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! SecondVC
        vc.nameSortSet = nameSortSet
        vc.imageSortSet = imageSortSet
        vc.desSortSet = desSortSet
       
    }
       
    
    

    

}
