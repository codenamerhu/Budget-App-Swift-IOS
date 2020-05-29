//
//  UIViews.swift
//  Business
//
//  Created by SBI Admin on 2020/05/29.
//  Copyright © 2020 SBI. All rights reserved.
//

import Foundation
import UIKit

class CustomUIView : UIView {
    
    override func didMoveToWindow() {
        
        switch traitCollection.userInterfaceStyle {
            case .light, .unspecified:
                // light mode detected
                break
            case .dark:
                // dark mode detected
                break
                

        @unknown default:
            break
        }
    }

}

extension UIView {
    
    func UIViewCorners(){
        
        self.layer.cornerRadius = 25
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
    
    
    func UIViewCorners_no_shadow(){
        self.layer.cornerRadius = 25
    }
    
    
    
    func UIViewCorners_10px(){
        
        self.layer.cornerRadius = 10
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
    
    
}
