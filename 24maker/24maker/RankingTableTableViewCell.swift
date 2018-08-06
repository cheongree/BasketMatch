//
//  RankingTableTableViewCell.swift
//  24maker
//
//  Created by cscoi020 on 2018. 8. 3..
//  Copyright © 2018년 Qyun. All rights reserved.
//

import UIKit

class RankingTableTableViewCell: UITableViewCell {

    
    @IBOutlet weak var teamRanking: UILabel!
    @IBOutlet weak var teamImage: UIImageView!
    @IBOutlet weak var teamName: UILabel!
    @IBOutlet weak var teamRecord: UILabel!
    @IBOutlet weak var teamRating: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
