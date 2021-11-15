//
//  CharcoalViewController.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 08/04/1443 AH.
//

import UIKit

class CharcoalViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var charcoalCollectionView: UICollectionView!
    var arrCharcoal = [Charcoal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        charcoalCollectionView.delegate = self
        charcoalCollectionView.dataSource = self
    
    
        guard let image = UIImage(named:  "coal1")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Girl".localized))
        
        guard let image = UIImage(named: "coal2")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Elderly Man".localized))
        
        guard let image = UIImage(named: "coal3")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Girl".localized))
        
        guard let image = UIImage(named: "coal4")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Little Baby".localized))
        
        guard let image = UIImage(named: "coal5") else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Elderly Man".localized))
        
        guard let image = UIImage(named: "coal7")else{return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Abdel Halim Hafez".localized))
        
        guard let image = UIImage(named: "coal8")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Girl".localized))
        
        guard let image = UIImage(named: "coal9")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Daenerys Targaryen".localized))
        
        guard let image = UIImage(named: "coal10")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Charcoal ".localized))
        
        guard let image = UIImage(named: "coal11")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Tupac Shakur".localized))
        
        guard let image = UIImage(named: "coal12")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "girl".localized))
        
        guard let image = UIImage(named: "coal13")else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Boy".localized))
        
        guard let image = UIImage(named: "coal14") else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Charcoal".localized))
        
        guard let image = UIImage(named: "coal6") else {return}
        arrCharcoal.append(Charcoal.init(photo: image, name: "Mother and daughter".localized))
      
        
            guard let image = UIImage(named:  "coal1")else {return}
            arrCharcoal.append(Charcoal.init(photo: image, name: "Girl".localized))
            
            guard let image = UIImage(named: "coal2")else {return}
            arrCharcoal.append(Charcoal.init(photo: image, name: "Elderly Man".localized))
            
            guard let image = UIImage(named: "coal3")else {return}
            arrCharcoal.append(Charcoal.init(photo: image, name: "Girl".localized))
            
            guard let image = UIImage(named: "coal4")else {return}
            arrCharcoal.append(Charcoal.init(photo: image, name: "Little Baby".localized))
            
            guard let image = UIImage(named: "coal5") else {return}
            arrCharcoal.append(Charcoal.init(photo: image, name: "Elderly Man".localized))
            
            guard let image = UIImage(named: "coal7")else{return}
            arrCharcoal.append(Charcoal.init(photo: image, name: "Abdel Halim Hafez".localized))
            
            guard let image = UIImage(named: "coal8")else {return}
            arrCharcoal.append(Charcoal.init(photo: image, name: "Girl".localized))
            
            guard let image = UIImage(named: "coal9")else {return}
            arrCharcoal.append(Charcoal.init(photo: image, name: "Daenerys Targaryen".localized))
            
            guard let image = UIImage(named: "coal10")else {return}
            arrCharcoal.append(Charcoal.init(photo: image, name: "Charcoal ".localized))
            
            guard let image = UIImage(named: "coal11")else {return}
            arrCharcoal.append(Charcoal.init(photo: image, name: "Tupac Shakur".localized))
            
            guard let image = UIImage(named: "coal12")else {return}
            arrCharcoal.append(Charcoal.init(photo: image, name: "girl".localized))
            
            guard let image = UIImage(named: "coal13")else {return}
            arrCharcoal.append(Charcoal.init(photo: image, name: "Boy".localized))
            
            guard let image = UIImage(named: "coal14") else {return}
            arrCharcoal.append(Charcoal.init(photo: image, name: "Charcoal".localized))
            
            guard let image = UIImage(named: "coal6") else {return}
            arrCharcoal.append(Charcoal.init(photo: image, name: "Mother and daughter".localized))
          
    }
    //Specifies the number of items in the list
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrCharcoal.count
    }
    //It feeds the cell with data
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "charcoalCell", for: indexPath)as! CharcoalCollectionViewCell
        let CharcoalData = arrCharcoal[indexPath.row]
        cell.setupCell(photo: CharcoalData.photo, name: CharcoalData.name)
        
        return cell
}
    //Specifies the cell size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.42, height: self.view.frame.width * 0.45 )
        
        //Space between cells or a row and the other row
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewDelegateFlowLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat{
            return 1
        }
        //Specifies vertical distance
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewDelegateFlowLayout, minimumInteritemForSectionAt section: Int) -> CGFloat{
            return 1
            
        }
    }
    //Defines the ends of the cell
    private func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewDelegateFlowLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
            return UIEdgeInsets(top: 1, left: 2, bottom: 1, right: 2)
    }

}
struct Charcoal {
    let photo : UIImage
    let name : String
}
