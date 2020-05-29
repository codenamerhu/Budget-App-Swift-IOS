//
//  LoginViewController.swift
//  Business
//
//  Created by SBI Admin on 2020/05/28.
//  Copyright © 2020 SBI. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var googleLogin: UIButton!
    @IBOutlet weak var facebookLogin: UIButton!
    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        UIconfigure()
    }

}

// UI Config
extension LoginViewController {
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
        
        loginButton.solidButton()
        passwordTextfield.bottomBorderTextField()
        usernameTextfield.bottomBorderTextField()
        facebookLogin.stokedButton()
        googleLogin.stokedButton()
    }
    
    func dark_ModeUiConfig(){
        
        
    }
}
