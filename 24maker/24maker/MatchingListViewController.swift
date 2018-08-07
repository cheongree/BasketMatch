//
//  MatchingListViewController.swift
//  24maker
//
//  Created by cscoi020 on 2018. 8. 2..
//  Copyright © 2018년 Qyun. All rights reserved.
//

import UIKit

class MatchingListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate { //매칭 탭 controller
    
//    @IBOutlet weak var segementedControl: UISegmentedControl!
    @IBOutlet weak var MatchingListTable: UITableView!
//    @IBAction func matchingListSegmented(_ sender: Any) {
//        MatchingListTable.reloadData()
//    }
    
    //let matchSchedule = DateFormatter()
    //matchSchedule.locale = Locale(identifier: "ko_kr")
    
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //if segementedControl.selectedSegmentIndex == 0 { // segmented control == 거리
        let cell = tableView.dequeueReusableCell(withIdentifier: "MatchingListCell", for: indexPath) as! MatchingListTableViewCell
        cell.teamImage.image = UIImage(named: matches[indexPath.row].myTeam.teamImage)
        cell.teamName.text = matches[indexPath.row].myTeam.name
        cell.matchDate.text = matches[indexPath.row].matchDate
        cell.location.text = matches[indexPath.row].matchLocation
        cell.rating.text = matches[indexPath.row].myTeam.rating
            return cell
//        } else if segementedControl.selectedSegmentIndex == 1 { // segmented control == 시간
//            let cell = tableView.dequeueReusableCell(withIdentifier: "MatchingListCell", for: indexPath) as! MatchingListTableViewCell
//            cell.teamImage.image = UIImage(named: matches[indexPath.row].myTeam.teamImage)
//            cell.teamName.text = matches[indexPath.row].myTeam.name
//            cell.matchDate.text = matches[indexPath.row].matchDate
//            cell.location.text = matches[indexPath.row].matchLocation
//            cell.rating.text = matches[indexPath.row].myTeam.rating
//            return cell
//        } else { // segmented control == 점수
//            let cell = tableView.dequeueReusableCell(withIdentifier: "MatchingListCell", for: indexPath) as! MatchingListTableViewCell
//            cell.teamImage.image = UIImage(named: matches[indexPath.row].myTeam.teamImage)
//            cell.teamName.text = matches[indexPath.row].myTeam.name
//            cell.matchDate.text = matches[indexPath.row].matchDate
//            cell.location.text = matches[indexPath.row].matchLocation
//            cell.rating.text = matches[indexPath.row].myTeam.rating
//            return cell
//        }
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
