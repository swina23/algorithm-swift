//
//  ViewController.swift
//  DelegateSample
//
//  Created by hirose on 2019/12/03.
//  Copyright © 2019 hirose. All rights reserved.
//

import UIKit

class InternViewController: UIViewController {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
    }
    
    
    @IBAction func chooseBtnTapped(_ sender: UIButton) {
        let bossVC = storyboard?.instantiateViewController(withIdentifier: "BossViewController") as! BossViewController
        bossVC.bossDelegate = self
        present(bossVC, animated: true, completion: nil)
    }
}

extension InternViewController: BossDelegate {
    
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        self.mainImageView.image = image
        
        if name == "Luke Skywalker" {
            nameLabel.textColor = .black
        }
        nameLabel.text = name
        
        view.backgroundColor = color
    }
}
