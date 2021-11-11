//
//  CollectionViewController.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 05/04/1443 AH.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
   
    

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!

    var arrProductPhotos = [UIImage(named: "king1")!,UIImage(named: "King2")!,UIImage(named: "King3")!,UIImage(named: "king4")!,UIImage(named: "King5")!,UIImage(named: "King6")!,UIImage(named: "King7")!]

    
    
   
    
    
    
    var timer : Timer?
    var currentCellIndex = 0
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        pageControl.numberOfPages = arrProductPhotos.count
        
        startTimer()
        
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
    }
    
    @objc func moveToNextIndex(){
        if currentCellIndex < arrProductPhotos.count - 1{
            currentCellIndex += 1
        }else{
            currentCellIndex = 0
        }

        collectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
        pageControl.currentPage = currentCellIndex
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrProductPhotos.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCell", for: indexPath) as! CollectionViewCell
        
        cell.imgProductPhoto.image = arrProductPhotos[indexPath.row]
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0 
    }
    
}
