//
//  ViewController.swift
//  AdvisorTripApp
//
//  Created by Hind Alharbi on 11/8/21.
//

import UIKit

class ViewController: UIViewController , UISearchBarDelegate , UITableViewDelegate, UITableViewDataSource {
    
    let countryNameArr = [String]()

    var isSearching = false
    var searchedCountry = [String]()

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
             if isSearching {
                 return searchedCountry.count
             } else {
                 return countryNameArr.count
             }
         }
         
         func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
             let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
             if isSearching {
                 cell?.textLabel?.text = searchedCountry[indexPath.row]
             } else {
                 cell?.textLabel?.text = countryNameArr[indexPath.row]
             }
             return cell!
         }
     
   
         
         func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
             searchedCountry = countryNameArr.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
             isSearching = true
             tblView.reloadData()
         }
         
         func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
             isSearching = false
             searchBar.text = ""
             tblView.reloadData()
         }

}
