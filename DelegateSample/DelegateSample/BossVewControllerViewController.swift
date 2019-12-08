//
//  BossVewControllerViewController.swift
//  DelegateSample
//
//  Created by hirose on 2019/12/03.
//  Copyright © 2019 hirose. All rights reserved like a command list.
//

import UIKit

protocol BossDelegate {
    // protocol is essentially just list of functions.
    func didTapChoise(image: UIImage,  name: String, color: UIColor)
}

class BossVewControllerViewController: UIViewController {
    
    // The variable gonna hold intern to speak to.
    var bossDelegate:BossDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func imperialButtonTapped(_ sender: Any) {
        // Boss make intern to imprement bellow method
        // Boss knowd all information that Intern should do.
        bossDelegate.didTapChoise(image: UIImage(named: "vader")!, name: "Darth Vador", color: .red)
        
        dismiss(animated: true) {
            print("pushed imperialBtn")
        }
    }
    
    @IBAction func rebelButtonTapped(_ sender: Any) {
        // Boss make intern to imprement bellow method
        // Boss knowd all information that Intern should do.
        bossDelegate.didTapChoise(image: UIImage(named: "luke")!, name: "Luke Skywalker", color: .cyan)
        
        dismiss(animated: true) {
            print("pushed rebelBtn")
        }
    }
    
}
