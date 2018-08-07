//
//  RankingViewController.swift
//  24maker
//
//  Created by cscoi020 on 2018. 8. 3..
//  Copyright © 2018년 Qyun. All rights reserved.
//

import UIKit

class RankingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var rankingTable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RankingTableCell", for: indexPath) as! RankingTableTableViewCell
        
        let teamsOrdered = teams.sorted {Int($0.rating)! > Int($1.rating)!}
        
        cell.teamName.text = teamsOrdered[indexPath.row].name
        cell.teamImage.image = UIImage(named: teamsOrdered[indexPath.row].teamImage)
        cell.teamRanking.text = String(indexPath.row+1)
        cell.teamRating.text = teamsOrdered[indexPath.row].rating
        cell.teamRecord.text = String(teamsOrdered[indexPath.row].win) + "승 " + String(teamsOrdered[indexPath.row].lose) + "패"
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = rankingTable.indexPathForSelectedRow,
            let detailVC = segue.destination as? TeamProfileViewController {
            let teamsOrdered = teams.sorted {Int($0.rating)! > Int($1.rating)!}
            let selectedTeam : Team = teamsOrdered[indexPath.row]
            detailVC.team = selectedTeam
        }
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
