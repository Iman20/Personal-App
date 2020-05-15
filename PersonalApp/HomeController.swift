//
//  HomeController.swift
//  PersonalApp
//
//  Created by MacBook on 16/05/20.
//  Copyright © 2020 MacBook. All rights reserved.
//

import UIKit

class HomeController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "We're logged in"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sign out", style: .plain, target: self, action: #selector(handleSignOut))
        
        let imageView = UIImageView(image: UIImage(named: "home"))
        view.addSubview(imageView)
        _ = imageView.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, topConstant: 64, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
    
    @objc func handleSignOut(){
        UserDefaults.standard.set(false, forKey: "isLoggingIn")
        UserDefaults.standard.synchronize()
        
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
        
    }
}
