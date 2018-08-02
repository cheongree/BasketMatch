//
//  RecruitViewController.swift
//  24maker
//
//  Created by cscoi021 on 2018. 7. 30..
//  Copyright © 2018년 Qyun. All rights reserved.
//

import UIKit

class RecruitViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var recruitTableView: UITableView!
    @IBAction func recruitSegmented(_ sender: UISegmentedControl) {
        recruitTableView.reloadData()
        
    }
    var teams: [Team] = [
        Team(name: "CHICAGO", recruitingPosition: ["1", "3"], location: "서울시 강남구", rating: "1000", teamImage: "team1"),
        Team(name: "MIAMI", recruitingPosition: ["2"], location: "인천시 서구", rating: "1300", teamImage: "team2"),
        Team(name: "LA", recruitingPosition: ["4", "5"], location: "경기도 광명시", rating: "1200", teamImage: "team3"),
        Team(name: "TORONTO", recruitingPosition: ["1", "3", "5"], location: "강원도 춘천시", rating: "1400", teamImage: "team4")
    ]
    
    var players: [Player] = [
        Player(name: "김조던", position: ["1", "3"], location: "서울시 성북구", playerImage: "profile"),
        Player(name: "박카레", position: ["2"], location: "서울시 강남구", playerImage: "profile"),
        Player(name: "야오밍", position: ["4", "5"], location: "서울시 성동구", playerImage: "profile"),
        Player(name: "서브룩", position: ["1", "3", "5"], location: "서울시 중구", playerImage: "profile")
    ]
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if segmentedControl.selectedSegmentIndex == 0 {
            return teams.count
        }
        else {
            return players.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if segmentedControl.selectedSegmentIndex == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecruitMemberCell", for: indexPath) as! RecruitMemberTableViewCell
            cell.teamName.text = teams[indexPath.row].name
            cell.location.text = teams[indexPath.row].location
            cell.position.text = teams[indexPath.row].positionPrint()
            cell.rating.text = teams[indexPath.row].rating
            cell.teamImage.image = UIImage(named: teams[indexPath.row].teamImage)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecruitTeamCell", for: indexPath) as! RecruitTeamTableViewCell
            cell.playerName.text = players[indexPath.row].name
            cell.location.text = players[indexPath.row].location
            cell.postion.text = players[indexPath.row].positionPrint()
            cell.playerImage.image = UIImage(named: players[indexPath.row].playerImage)
            return cell
        }
        
    }
    
    override func viewDidLoad() {
        self.recruitTableView.rowHeight = 85 // cell 크기 설정
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
