//
//  ViewController.swift
//  DelegateSample
//
//  Created by hirose on 2019/12/03.
//  Copyright © 2019 hirose. All rights reserved.
//

import UIKit

let lightNotificationKey = "co.seanallen.lightSide"
let darkNotificationKey = "co.seanallen.darkSide"

// This class is Notification Observer.
class InternViewController: UIViewController {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    let light = Notification.Name(rawValue: lightNotificationKey)
    let dark = Notification.Name(rawValue: darkNotificationKey)
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
        
        createObservers()
    }
    
    func createObservers() {
        
        // light observer
        NotificationCenter.default.addObserver(self, selector: #selector(InternViewController.updateCharacterImage(notification:)), name: light, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(InternViewController.updateNameLabel(notification:)), name: light, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(InternViewController.updateBackground(notification:)), name: light, object: nil)
        
        // dark observer
        NotificationCenter.default.addObserver(self, selector: #selector(InternViewController.updateCharacterImage(notification:)), name: dark, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(InternViewController.updateNameLabel(notification:)), name: dark, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(InternViewController.updateBackground(notification:)), name: dark, object: nil)
    }
    
    @objc func updateCharacterImage(notification: NSNotification) {
        let isLight = notification.name == light
        let image = isLight ? UIImage(named: "luke")! : UIImage(named: "vader")!
        mainImageView.image = image
    }
    
    @objc func updateNameLabel(notification: NSNotification) {
        let isLight = notification.name == light
        let name = isLight ? "Luke Skywalker" : "Darth Vader"
        nameLabel.text = name
    }
    
    @objc func updateBackground(notification: NSNotification) {
        let isLight = notification.name == light
        let color = isLight ? UIColor.cyan : UIColor.red
        view.backgroundColor = color
    }
    
    @IBAction func chooseBtnTapped(_ sender: UIButton) {
        let bossVC = storyboard?.instantiateViewController(withIdentifier: "BossViewController") as! BossViewController
        present(bossVC, animated: true, completion: nil)
    }
}



