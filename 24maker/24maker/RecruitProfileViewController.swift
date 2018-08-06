//
//  RecruitProfileViewController.swift
//  24maker
//
//  Created by cscoi021 on 2018. 8. 6..
//  Copyright © 2018년 Qyun. All rights reserved.
//

import UIKit

class RecruitProfileViewController: UIViewController {


    
    var players: Player?
    
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileHeight: UILabel!
    @IBOutlet weak var profileWeight: UILabel!
    @IBOutlet weak var profilePosition: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        if let item = players {
            profileName.text = item.name
            profileHeight.text = "\(item.height)cm"
            profileWeight.text = "\(item.weight)kg"
            profilePosition.text = "\(item.position)"
            profilePicture.image = UIImage(named: item.playerImage)
        }
        
        
    }
}
