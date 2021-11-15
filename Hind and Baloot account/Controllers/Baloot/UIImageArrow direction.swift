//
//  UIImageArrow direction.swift
//  Games Calculetor
//
//  Created by mac on 06/04/1443 AH.
//

import Foundation
import UIKit


//    
//    extension  UIImage {
//        func rotate(_ radians: CGFloat) -> UIImage {
//            let arrowImage = self.UIImage!
//            let LARGEST_SIZE = CGFloat(max(self.size.width, self.size.height))
//            let context = CGContext.init(data: nil, width:Int(LARGEST_SIZE), height:Int(LARGEST_SIZE), bitsPerComponent: arrowImage.bitsPerComponent, bytesPerRow: 0, space: arrowImage.colorSpace!, bitmapInfo: arrowImage.bitmapInfo.rawValue)!
//
//            var drawRect = CGRect.zero
//            drawRect.size = self.size
//            let drawOrigin = CGPoint(x: (LARGEST_SIZE - self.size.width) * 0.5,y: (LARGEST_SIZE - self.size.height) * 0.5)
//            drawRect.origin = drawOrigin
//            var tf = CGAffineTransform.identity
//            tf = tf.translatedBy(x: LARGEST_SIZE * 0.5, y: LARGEST_SIZE * 0.5)
//            tf = tf.rotated(by: CGFloat(radians))
//            tf = tf.translatedBy(x: LARGEST_SIZE * -0.5, y: LARGEST_SIZE * -0.5)
//            context.concatenate(tf)
//            context.draw(cgImage, in: drawRect)
//            var rotatedImage = context.makeImage()!
//
//            drawRect = drawRect.applying(tf)
//
//            rotatedImage = rotatedImage.cropping(to: drawRect)!
//            let resultImage = UIImage(named: "1-11")!
//                return resultImage
//        }
//    }


