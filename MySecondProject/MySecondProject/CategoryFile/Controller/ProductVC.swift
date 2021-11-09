//
//  ProductVC.swift
//  MySecondProject
//
//  Created by MACBOOK on 03/04/1443 AH.
//

import Foundation
import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
    // product collection
    @IBOutlet weak var productsCollection: UICollectionView!
    
    // product
     var products = [Product]()
    
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        productsCollection.dataSource = self
        productsCollection.delegate = self
        
    }
    
    
    //
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
        
    }
    
    //
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //
        return products.count
    }
    
    //
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        // cell ProductCell
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            //
            let product = products[indexPath.row]
            //
            cell.updateViews(product: product)
            // 
            return cell
        }
        
        return ProductCell()
    }
    
}
