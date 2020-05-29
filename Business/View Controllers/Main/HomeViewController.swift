//
//  HomeViewController.swift
//  Business
//
//  Created by SBI Admin on 2020/05/29.
//  Copyright © 2020 SBI. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var fundButton: UIButton!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var budgetPreviewView: UIView!
    @IBOutlet weak var topView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        UIconfigure()
    }

}

extension HomeViewController {
    
    func UIconfigure(){
        
        switch traitCollection.userInterfaceStyle {
            case .light, .unspecified:
                // light mode detected
                light_ModeUiConfig()
            case .dark:
                // dark mode detected
                dark_ModeUiConfig()
                
            @unknown default:
                light_ModeUiConfig()
        }
        
    }
    
    func light_ModeUiConfig(){
        
        topView.UIViewCorners_no_shadow()
        budgetPreviewView.UIViewCorners()
        sendButton.solidButton()
        fundButton.solidButton()
    }
    
    func dark_ModeUiConfig(){
        
        
    }
}
