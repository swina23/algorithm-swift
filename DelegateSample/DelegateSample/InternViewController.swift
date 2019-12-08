//
//  ViewController.swift
//  DelegateSample
//
//  Created by hirose on 2019/12/03.
//  Copyright © 2019 hirose. All rights reserved.
//

import UIKit

class InternViewController: UIViewController,BossDelegate {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
    }
    
    
    @IBAction func chooseBtnTapped(_ sender: Any) {
        let bossVC = storyboard?.instantiateViewController(withIdentifier: "BossViewController") as! BossViewController
        
        bossVC.bossDelegate = self
        present(bossVC, animated: true, completion: nil)
    }
    
    func didTapChoise(image: UIImage, name: String, color: UIColor) {
        self.mainImageView.image = image
        
        if name == "Luke Skywalker" {
            nameLabel.textColor = .black
        }
        self.nameLabel.text = name
        
        view.backgroundColor = color
    }

}

