//
//  textfields.swift
//  Business
//
//  Created by SBI Admin on 2020/05/29.
//  Copyright © 2020 SBI. All rights reserved.
//


import UIKit


extension UITextField {
    
    func bottomBorderTextField(){
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0.0, y: self.frame.height - 1, width: self.frame.width, height: 1.0)
        
        bottomLine.backgroundColor = buttonStroke?.cgColor
        self.borderStyle = UITextField.BorderStyle.none
        self.layer.addSublayer(bottomLine)
    }
}
