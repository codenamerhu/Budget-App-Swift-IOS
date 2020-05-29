//
//  IntroViewController.swift
//  Business
//
//  Created by SBI Admin on 2020/05/28.
//  Copyright © 2020 SBI. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        UIconfigure()
    }
    

}

extension IntroViewController {
    
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
        
        bottomView.UIViewCorners()
        loginButton.solidButton()
        signupButton.stokedButton()
        
    }
    
    func dark_ModeUiConfig(){
        
        
    }
    
    
}
