//
//  MatchScheduleTableViewController.swift
//  24maker
//
//  Created by cscoi021 on 2018. 8. 1..
//  Copyright © 2018년 Qyun. All rights reserved.
//

import UIKit


class MatchScheduleTableViewController: UITableViewController {
    
    var matches: [Match] = [
        Match(myteam: Team(name: "CHICAGO", recruitingPosition: ["1", "3"], location: "서울시 강남구", rating: "1000", teamImage: "team1"), oppenentTeam: Team(name: "MIAMI", recruitingPosition: ["2"], location: "인천시 서구", rating: "1300", teamImage: "team2"), matchDate: "201808011530"),
        Match(myteam: Team(name: "MIAMI", recruitingPosition: ["2"], location: "인천시 서구", rating: "1300", teamImage: "team2"), oppenentTeam: Team(name: "LA", recruitingPosition: ["4", "5"], location: "경기도 광명시", rating: "1200", teamImage: "team3"), matchDate: "201807031930"),
        Match(myteam: Team(name: "LA", recruitingPosition: ["4", "5"], location: "경기도 광명시", rating: "1200", teamImage: "team3"), oppenentTeam: Team(name: "TORONTO", recruitingPosition: ["1", "3", "5"], location: "강원도 춘천시", rating: "1400", teamImage: "team4"), matchDate: "201803051720"),
        Match(myteam: Team(name: "TORONTO", recruitingPosition: ["1", "3", "5"], location: "강원도 춘천시", rating: "1400", teamImage: "team4"), oppenentTeam: Team(name: "CHICAGO", recruitingPosition: ["1", "3"], location: "서울시 강남구", rating: "1000", teamImage: "team1"), matchDate: "201804061910")
    ]
    
    @IBOutlet weak var teamSort: UISegmentedControl!
    @IBOutlet var matchTableView: UITableView!
    @IBAction func teamSegmented(_ sender: UISegmentedControl) {
        matchTableView.reloadData()
    }
    
    override func viewDidLoad() {
        self.matchTableView.rowHeight = 130
        super.viewDidLoad()

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
        
        if teamSort.selectedSegmentIndex == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MatchScheduleCell", for: indexPath) as! MatchScheduleTableViewCell
            cell.myTeamImage.image = UIImage(named: matches[indexPath.row].myteam.teamImage)
            cell.oppenentTeamImage.image = UIImage(named: matches[indexPath.row].oppenentTeam.teamImage)
            cell.matchDay.text = matches[indexPath.row].matchDay()
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MatchScheduleCell", for: indexPath) as! MatchScheduleTableViewCell
            cell.myTeamImage.image = UIImage(named: matches[indexPath.row].myteam.teamImage)
            cell.oppenentTeamImage.image = UIImage(named: matches[indexPath.row].oppenentTeam.teamImage)
            cell.matchDay.text = matches[indexPath.row].matchDay()
            return cell
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
