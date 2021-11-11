//
//  SearchViewControler.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 05/04/1443 AH.
//
//
//import UIKit
//
//class SearchViewControler: UIViewController  {
//    
//    @IBOutlet weak var searchBar: UISearchBar!
//    
//    @IBOutlet var viewSearch: UIView!
//    
//    var countryList = [String]()
//        
//        var searchedCountry = [String]()
//        
//        var searching = false
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
////        viewSearch.delegate = self
////        viewSearch.dataSource = self
//        self.listOfCountries()
//    }
//    
//    func listOfCountries() {
//            for code in NSLocale.isoCountryCodes as [String] {
//                let id = NSLocale.localeIdentifier(fromComponents: [NSLocale.Key.countryCode.rawValue: code])
//                let name = NSLocale(localeIdentifier: "en").displayName(forKey: NSLocale.Key.identifier, value: id) ?? "Country not found for code: \(code)"
//                countryList.append(name + " " + countryFlag(country: code))
////                viewSearch.reloadData()
//            }
//        }
//    func countryFlag(country: String) -> String {
//            let base: UInt32 = 127397
//            var s = ""
//            for v in country.unicodeScalars {
//                s.unicodeScalars.append(UnicodeScalar(base + v.value)!)
//            }
//            return String(s)
//        }
//    }

