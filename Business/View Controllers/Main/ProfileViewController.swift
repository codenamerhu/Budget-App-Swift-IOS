//
//  ProfileViewController.swift
//  Business
//
//  Created by SBI Admin on 2020/05/29.
//  Copyright © 2020 SBI. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var accountpreview: UIView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var badgeWrapper: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        UIconfigure()
    }
    

}

extension ProfileViewController {
    
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
        accountpreview.UIViewCorners()
        badgeWrapper.UIViewCorners()
        profileImage.roundCorners()
        
    }
    
    func dark_ModeUiConfig(){
        
        
    }
}
