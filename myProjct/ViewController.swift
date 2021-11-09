//
//  ViewController.swift
//  myProjct
//
//  Created by Huda N S on 30/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    //To add the logo and emoticons to the application interface
    private let imageViwe : UIImageView = {
        let imageViwe = UIImageView(frame: CGRect(x: 0, y: 0, width: 257, height: 279))
        imageViwe.image = UIImage(named: "logoMarsaai")
        return imageViwe
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageViwe)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageViwe.center = view.center
        animate()
        DispatchQueue.main.asyncAfter(deadline: .now(), execute: {
            self.animate()
        })
    }
    //function to determine the width and height of the image for animation
    private func animate() {
        UIView.animate(withDuration: 1 , animations: {
            let size = self.view.frame.size.width * 2
            let diffX = size - self.view.frame.size.width
            let diffY = self.view.frame.size.height - size
            self.imageViwe.frame = CGRect(x: -(diffX/2),
                                          y: diffY/2 ,
                                          width:size,
                                          height:size )
            self.imageViwe.alpha = 0
            //in order for the animation to be in full view
        }, completion: { done in
            if done {
                DispatchQueue.main.asyncAfter(deadline: .now()+1.2 , execute: {
                    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                    let vc = storyBoard.instantiateViewController(withIdentifier: "storyboardID") as! HomeViewController
                    vc.modalTransitionStyle = .coverVertical
                    vc.modalPresentationStyle = .currentContext
                    self.present(vc, animated: true)
                 }
               )
            }
        })
    }
}
