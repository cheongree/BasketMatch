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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = recruitTableView.indexPathForSelectedRow,
            let detailVC = segue.destination as? TeamProfileViewController {
                let selectedTeam : Team = teams[indexPath.row]
                detailVC.team = selectedTeam
        }
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



