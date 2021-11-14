//
//  recycleIdeasViewController.swift
//  PROJECT-2
//
//  Created by mona aleid on 08/04/1443 AH.
//

import UIKit

class RecycleIdeasViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
    @IBOutlet weak var collectionView: UICollectionView!
    var arrExampleIdea = [UIImage(named: "item1")!, UIImage(named: "item2")!, UIImage(named: "item3")!, UIImage(named: "item4")!, UIImage(named: "item5")!, UIImage(named: "item7")!, UIImage(named: "item8")!, UIImage(named: "item9")!]
    var timer : Timer?
    var currentCellIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        startTimer()
    }
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
    }
    
    @objc func moveToNextIndex(){
        if currentCellIndex < arrExampleIdea.count - 1{
           currentCellIndex += 1
        }else{
            currentCellIndex = 0
        }
        
        collectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally , animated: true)
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrExampleIdea.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ideasCell" , for: indexPath) as! IdeasCollectionViewCell
        cell.imgExample.image = arrExampleIdea[indexPath.row]
        return cell
    }
    
    //Size func is not working because of the CGSize // CGFloat
    //func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat{
        return 0
        }
    }
 
