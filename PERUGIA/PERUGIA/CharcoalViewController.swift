//
//  CharcoalViewController.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 08/04/1443 AH.
//

import UIKit

class CharcoalViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    @IBOutlet weak var charcoalCollectionView: UICollectionView!
    var arrCharcoal = [Charcoal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        collectionView.delegate = self
//        collectionView.dataSource = self
//     
        guard let image = UIImage(named:  "coal1")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Girl"))
        
        guard let image = UIImage(named: "coal2")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Elderly Man"))
        
        guard let image = UIImage(named: "coal3")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Girl"))
        
        guard let image = UIImage(named: "coal4")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Little Baby"))
        
        guard let image = UIImage(named: "coal5") else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Elderly Man"))
        
        guard let image = UIImage(named: "coal6") else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Mother and daughter"))
        
        guard let image = UIImage(named: "coal7")else{return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Abdel Halim Hafez"))
        
        guard let image = UIImage(named: "coal8")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Girl"))
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrCharcoal.count
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "charcoalCell", for: indexPath)as! CharcoalCollectionViewCell
        
        let data = arrCharcoal[indexPath.row]
        //cell.setupCell(photo: Charcoal.photo, name: Charcoal.name)
        //cell.setupCell(photo: Charcoal.photo, name: Charcoal.name)
        return cell
}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.45, height: self.view.frame.width * 0.45 )
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewDelegateFlowLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat{
            return 1
        }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewDelegateFlowLayout, minimumInteritemForSectionAt section: Int) -> CGFloat{
            return 0.1}
         }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewDelegateFlowLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
            return UIEdgeInsets(top: 1, left: 2, bottom: 1, right: 2)
    }

}
struct Charcoal {
    let photo : UIImage
    let name : String
}
