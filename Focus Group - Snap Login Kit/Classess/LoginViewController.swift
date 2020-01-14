//
//  ViewController.swift
//  Focus Group - Snap Login Kit
//
//  Created by eddie on 1/9/20.
//  Copyright © 2020 MLH. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    fileprivate static let DefaultMessage =
        
    """
    Welcome to the MLH Login Kit Focus Group. Your task is to implement the Login Kit SDK into this existing
    iOS application. Login Kit lets your users authenticate with Snapchat and bring their existing
    identity into your app. It uses OAuth, with Snapchat as the identity provider.
    """
    
    @IBOutlet fileprivate weak var loginButton: UIButton?
    @IBOutlet fileprivate weak var messageLabel: UILabel?
    @IBOutlet fileprivate weak var loginView: UIView?
    @IBOutlet fileprivate weak var profileView: UIView?
    @IBOutlet fileprivate weak var avatarView: UIImageView?
    @IBOutlet fileprivate weak var nameLabel: UILabel?
    @IBOutlet fileprivate weak var logoutButton: UINavigationItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
//Private Helpers

extension LoginViewController {
    fileprivate func displayForLogoutState() {
        // This is the display for the logout state
        DispatchQueue.main.async {
            self.logoutButton?.rightBarButtonItem?.isEnabled = false
            self.loginView?.isHidden = false
            self.profileView?.isHidden = true
            self.messageLabel?.text = LoginViewController.DefaultMessage
        }
    }
    
    fileprivate func displayForLoginState() {
        // This is the display for the login state
        DispatchQueue.main.async {
            self.logoutButton?.rightBarButtonItem?.isEnabled = true
            self.loginView?.isHidden = true
            self.profileView?.isHidden = false
            self.messageLabel?.text = LoginViewController.DefaultMessage
        }
    }
}

