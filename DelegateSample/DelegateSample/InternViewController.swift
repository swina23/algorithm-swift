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
    @IBOutlet weak var choseBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func chooseBtnTapped(_ sender: Any) {
        let bossVC = storyboard?.instantiateViewController(withIdentifier: "BossViewController") as! BossViewController
        
//        let bossVC = storyboard?.instantiateViewController(identifier: "BossViewController")
        
        present(bossVC, animated: true, completion: nil)
    }
    
    func didTapChoise(image: UIImage, name: String, color: UIColor) {
        self.mainImageView.image = image
        self.nameLabel.text = name
        self.mainImageView.backgroundColor = color
    }

}

