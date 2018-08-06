//
//  TeamProfileViewController.swift
//  24maker
//
//  Created by cscoi021 on 2018. 8. 6..
//  Copyright © 2018년 Qyun. All rights reserved.
//

import UIKit

class TeamProfileViewController: UIViewController {

    var teams: Team?
    
    @IBOutlet weak var TotalGamesPlayed: UILabel!
    @IBOutlet weak var TotalWin: UILabel!
    @IBOutlet weak var TotalLose: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
