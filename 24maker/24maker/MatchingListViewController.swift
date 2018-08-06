//
//  MatchingListViewController.swift
//  24maker
//
//  Created by cscoi020 on 2018. 8. 2..
//  Copyright © 2018년 Qyun. All rights reserved.
//

import UIKit

class MatchingListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate { //매칭 탭 controller
    
    @IBOutlet weak var segementedControl: UISegmentedControl!
    @IBOutlet weak var MatchingListTable: UITableView!
    @IBAction func matchingListSegmented(_ sender: Any) {
        MatchingListTable.reloadData()
    }
    
    var matches: [Match] = [ // 예시 데이터
        Match(myTeam: Team(name: "CHICAGO", recruitingPosition: ["1", "3"], location: "서울시 강남구", rating: "1000", teamImage: "team1", win: 3, lose: 1), matchDate: "201805011350", matchLocation: "서울시 강남구"),
        Match(myTeam: Team(name: "MIAMI", recruitingPosition: ["2"], location: "인천시 서구", rating: "1300", teamImage: "team2", win: 43, lose: 28), matchDate: "201805011350", matchLocation: "인천시 서구"),
        Match(myTeam: Team(name: "LA", recruitingPosition: ["4", "5"], location: "경기도 광명시", rating: "1200", teamImage: "team3", win: 32, lose: 32), matchDate: "201805011350", matchLocation: "경기도 광명시"),
        Match(myTeam: Team(name: "TORONTO", recruitingPosition: ["1", "3", "5"], location: "강원도 춘천시", rating: "1400", teamImage: "team4", win: 13, lose: 3), matchDate: "201805011350", matchLocation: "강원도 춘천시")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if segementedControl.selectedSegmentIndex == 0 { // segmented control == 거리
            let cell = tableView.dequeueReusableCell(withIdentifier: "MatchingListCell", for: indexPath) as! MatchingListTableViewCell
            cell.teamImage.image = UIImage(named: matches[indexPath.row].myTeam.teamImage)
            cell.teamName.text = matches[indexPath.row].myTeam.name
            cell.matchDate.text = matches[indexPath.row].matchDate
            cell.location.text = matches[indexPath.row].matchLocation
            cell.rating.text = matches[indexPath.row].myTeam.rating
            return cell
        } else if segementedControl.selectedSegmentIndex == 1 { // segmented control == 시간
            let cell = tableView.dequeueReusableCell(withIdentifier: "MatchingListCell", for: indexPath) as! MatchingListTableViewCell
            cell.teamImage.image = UIImage(named: matches[indexPath.row].myTeam.teamImage)
            cell.teamName.text = matches[indexPath.row].myTeam.name
            cell.matchDate.text = matches[indexPath.row].matchDate
            cell.location.text = matches[indexPath.row].matchLocation
            cell.rating.text = matches[indexPath.row].myTeam.rating
            return cell
        } else { // segmented control == 점수
            let cell = tableView.dequeueReusableCell(withIdentifier: "MatchingListCell", for: indexPath) as! MatchingListTableViewCell
            cell.teamImage.image = UIImage(named: matches[indexPath.row].myTeam.teamImage)
            cell.teamName.text = matches[indexPath.row].myTeam.name
            cell.matchDate.text = matches[indexPath.row].matchDate
            cell.location.text = matches[indexPath.row].matchLocation
            cell.rating.text = matches[indexPath.row].myTeam.rating
            return cell
        }
    }
    

    
    override func viewDidLoad() {
        self.MatchingListTable.rowHeight = 60 // cell 크기 설정
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
