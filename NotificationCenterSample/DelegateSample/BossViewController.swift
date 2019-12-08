//
//  BossViewController.swift
//  DelegateSample
//
//  Created by hirose on 2019/12/03.
//  Copyright © 2019 hirose. All rights reserved like a command list.
//

import UIKit

// This class is Notification sender.
class BossViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func imperialButtonTapped(_ sender: UIButton) {
        // define notification name
        let name = Notification.Name(rawValue: darkNotificationKey)
        // post
        NotificationCenter.default.post(name: name, object: nil)
        // close window
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func rebelButtonTapped(_ sender: Any) {
        // define notification name
        let name = Notification.Name(rawValue: lightNotificationKey)
        // post
        NotificationCenter.default.post(name: name, object: nil)
        // close window
        dismiss(animated: true, completion: nil)
    }
    
}
