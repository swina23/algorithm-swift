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
       
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func rebelButtonTapped(_ sender: Any) {
       
        dismiss(animated: true, completion: nil)
    }
    
}
