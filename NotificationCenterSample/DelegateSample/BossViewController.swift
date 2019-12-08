//
//  BossViewController.swift
//  DelegateSample
//
//  Created by hirose on 2019/12/03.
//  Copyright © 2019 hirose. All rights reserved like a command list.
//

import UIKit

class BossViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func imperialButtonTapped(_ sender: UIButton) {
        let name = Notification.Name(rawValue: darkNotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func rebelButtonTapped(_ sender: Any) {
       let name = Notification.Name(rawValue: lightNotificationKey)
       NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
}
