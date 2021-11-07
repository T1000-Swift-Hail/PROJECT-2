//
//  CollectionViewA.swift
//  Marssai
//
//  Created by Huda N S on 02/04/1443 AH.
//

import UIKit

class CollectionViewA: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collicton: UICollectionView!
    var MarsaaiProduct = [UIImage(named: "img5")! , UIImage(named: "img2")! , UIImage(named: "img3")! , UIImage(named: "img6")! , UIImage(named: "img11")! , UIImage(named: "img10")! , UIImage(named: "img12")! , UIImage(named: "img13")! , UIImage(named: "img18")! , UIImage(named: "img19")! , UIImage(named: "img20")! , UIImage(named: "img22")!]
    var timer : Timer?
    var currentCallIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        collicton.delegate = self
        collicton.dataSource = self
        pageControl.numberOfPages = MarsaaiProduct.count
        
        startTimer()
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2 , target: self, selector: #selector(moveToNextIndex), userInfo: nil , repeats: true)
    }
    @objc func moveToNextIndex(){
        if currentCallIndex < MarsaaiProduct.count - 1 {
            currentCallIndex += 1
        }else{
            currentCallIndex = 0
        }
        
        collicton.scrollToItem(at: IndexPath(item: currentCallIndex , section: 0), at: .centeredHorizontally , animated: true)
        pageControl.currentPage = currentCallIndex
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MarsaaiProduct.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let call = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCall", for: indexPath) as! CollectionViewImg
        call.imgMarssai.image = MarsaaiProduct[indexPath.row]
        return call
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width , height: collectionView.frame.height)
      }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
