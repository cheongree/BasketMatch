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
    
//    var matches: [Match] = [ // 예시 데이터
//        Match(myTeam: Team(name: "아울스", recruitingPosition: ["1", "3"], location: "서울시 강남구", rating: "1000", teamImage: "team1", win: 3, lose: 1), matchDate: "201805011350", matchLocation: "서울시 강남구"),
//        Match(myTeam: Team(name: "토파즈", recruitingPosition: ["2"], location: "인천시 서구", rating: "1300", teamImage: "team2", win: 43, lose: 28), matchDate: "201805011350", matchLocation: "인천시 서구"),
//        Match(myTeam: Team(name: "MSA", recruitingPosition: ["4", "5"], location: "경기도 광명시", rating: "1200", teamImage: "team3", win: 32, lose: 32), matchDate: "201805011350", matchLocation: "경기도 광명시"),
//        Match(myTeam: Team(name: "닥터바스켓", recruitingPosition: ["1", "3", "5"], location: "강원도 춘천시", rating: "1400", teamImage: "team4", win: 13, lose: 3), matchDate: "201805011350", matchLocation: "강원도 춘천시")
//    ]
    
    
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
