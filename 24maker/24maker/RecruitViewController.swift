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
        Team(name: "CHICAGO", recruitingPosition: ["1", "3"], location: "서울시 강남구", rating: "1000", teamImage: "team1", win: 3, lose: 1),
        Team(name: "MIAMI", recruitingPosition: ["2"], location: "인천시 서구", rating: "1300", teamImage: "team2", win: 43, lose: 28),
        Team(name: "LA", recruitingPosition: ["4", "5"], location: "경기도 광명시", rating: "1200", teamImage: "team3", win: 32, lose: 32),
        Team(name: "TORONTO", recruitingPosition: ["1", "3", "5"], location: "강원도 춘천시", rating: "1400", teamImage: "team4", win: 13, lose: 3)
    ]
    
    var players: [Player] = [
        Player(name: "김조던", position: ["1", "3"], location: "서울시 성북구", playerImage: "profile", height: 193, weight: 87),
        Player(name: "박카레", position: ["2"], location: "서울시 강남구", playerImage: "profile", height: 191, weight: 83),
        Player(name: "야오밍", position: ["4", "5"], location: "서울시 성동구", playerImage: "profile", height: 212, weight: 103),
        Player(name: "서브룩", position: ["1", "3", "5"], location: "서울시 중구", playerImage: "profile", height: 194, weight: 90)
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
        //self.recruitTableView.rowHeight = 85 // cell 크기 설정
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.white
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    //코드 짜는중.....
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "RecruitProfileViewController") as? RecruitProfileViewController
//        vc?.profileName = players[indexPath.row].name
 //       vc?.profilePosition = players[indexPath.row].positionPrint()
  //      self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
  //  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let indexPath = tableView.indexPathForSelectedRow, let memberDetail = segue.destination as? RecruitProfileViewController{ let selected : Player = RecruitMemberTableViewCell[indexPath.row]
            
            // if segue.identifier == "RecruitMemberSegue",
            //   let memberDetail = segue.destination as? RecruitProfileViewController{
            //  memberDetail.playerName = name.text

  //      else if segue.identifier == "RecruitTeamSegue",
    //        let teamDetail = segue.destination as? TeamProfileViewController {
            

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



