//
//  TeamProfileViewController.swift
//  24maker
//
//  Created by Qyun on 06/08/2018.
//  Copyright © 2018 Qyun. All rights reserved.
//

import UIKit

class TeamProfileViewController: UIViewController {

    @IBOutlet weak var teamName: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var teamRating: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var win: UILabel!
    @IBOutlet weak var lose: UILabel!
    @IBOutlet weak var teamImage: UIImageView!
    
    var team : Team?
    

    
    override func viewWillAppear(_ animated: Bool) {
        teamName.text = team?.name
        location.text = team?.location
        teamRating.text = team?.rating
        total.text = String((team?.win)! + (team?.lose)!)
        win.text = String((team?.win)!)
        lose.text = String((team?.lose)!)
        teamImage.image = UIImage(named: (team?.teamImage)!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
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
