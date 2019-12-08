//
//  BossViewController.swift
//  DelegateSample
//
//  Created by hirose on 2019/12/03.
//  Copyright © 2019 hirose. All rights reserved like a command list.
//

import UIKit

protocol BossDelegate {
    // protocol is essentially just list of functions.
    func didTapChoice(image: UIImage,  name: String, color: UIColor)
}

class BossViewController: UIViewController {
    
    // The variable gonna hold intern to speak to.
    var bossDelegate:BossDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func imperialButtonTapped(_ sender: UIButton) {
        // Boss make intern to imprement bellow method
        // Boss knowd all information that Intern should do.
//        let vaderImage = UIImage(imageLiteralResourceName: "vader")
//        bossDelegate.didTapChoice(image: vaderImage, name: "Darth Vader", color: .red)
        bossDelegate.didTapChoice(image: UIImage(named: "vader")!, name: "Luke Skywalker", color: .cyan)
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func rebelButtonTapped(_ sender: Any) {
        // Boss make intern to imprement bellow method
        // Boss knowd all information that Intern should do.
        bossDelegate.didTapChoice(image: UIImage(named: "luke")!, name: "Luke Skywalker", color: .cyan)
        
        dismiss(animated: true, completion: nil)
    }
    
}
