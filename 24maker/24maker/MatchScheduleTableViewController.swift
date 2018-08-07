//
//  MatchScheduleTableViewController.swift
//  24maker
//
//  Created by cscoi021 on 2018. 8. 1..
//  Copyright © 2018년 Qyun. All rights reserved.
//

import UIKit


class MatchScheduleTableViewController: UITableViewController {
    

    
    @IBOutlet weak var teamSort: UISegmentedControl!
    @IBOutlet var matchTableView: UITableView!
    @IBAction func teamSegmented(_ sender: UISegmentedControl) {
        matchTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.tintColor = UIColor.white
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if teamSort.selectedSegmentIndex == 0 {
            return matches.count
        }   else {
            return matches.count
        }
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if teamSort.selectedSegmentIndex == 0 { // segmented control 나의 팀
            let cell = tableView.dequeueReusableCell(withIdentifier: "MatchScheduleCell", for: indexPath) as! MatchScheduleTableViewCell
            cell.myTeamImage.image = UIImage(named: scheduledMatches[indexPath.row].myteam.teamImage)
            cell.oppenentTeamImage.image = UIImage(named: scheduledMatches[indexPath.row].opponentTeam.teamImage)
            cell.matchDay.text = scheduledMatches[indexPath.row].matchDay()
            cell.location.text = scheduledMatches[indexPath.row].matchLocation
            cell.myTeamName.text = scheduledMatches[indexPath.row].myteam.name
            cell.opponentTeamName.text = scheduledMatches[indexPath.row].opponentTeam.name
            return cell
        } else { // segmented control 전체 팀
            let cell = tableView.dequeueReusableCell(withIdentifier: "MatchScheduleCell", for: indexPath) as! MatchScheduleTableViewCell
            if Int(scheduledMatches[indexPath.row].myteam.rating)! >= Int(scheduledMatches[indexPath.row].opponentTeam.rating)!{ // myteam의 rating이 oppenent보다 높을경우 왼쪽에 표시되게 설정
                cell.myTeamImage.image = UIImage(named: scheduledMatches[indexPath.row].myteam.teamImage)
                cell.oppenentTeamImage.image = UIImage(named: scheduledMatches[indexPath.row].opponentTeam.teamImage)
                cell.matchDay.text = scheduledMatches[indexPath.row].matchDay()
                cell.location.text = scheduledMatches[indexPath.row].matchLocation
                cell.myTeamName.text = scheduledMatches[indexPath.row].myteam.name
                cell.opponentTeamName.text = scheduledMatches[indexPath.row].opponentTeam.name
                return cell
            } else {
                cell.myTeamImage.image = UIImage(named: scheduledMatches[indexPath.row].opponentTeam.teamImage)
                cell.oppenentTeamImage.image = UIImage(named: scheduledMatches[indexPath.row].myteam.teamImage)
                cell.matchDay.text = scheduledMatches[indexPath.row].matchDay()
                cell.location.text = scheduledMatches[indexPath.row].matchLocation
                cell.myTeamName.text = scheduledMatches[indexPath.row].opponentTeam.name
                cell.opponentTeamName.text = scheduledMatches[indexPath.row].myteam.name
                return cell
            }
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
