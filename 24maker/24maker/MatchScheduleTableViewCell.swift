//
//  MatchScheduleTableViewCell.swift
//  24maker
//
//  Created by cscoi021 on 2018. 8. 1..
//  Copyright © 2018년 Qyun. All rights reserved.
//

import UIKit

class MatchScheduleTableViewCell: UITableViewCell {

    @IBOutlet weak var myTeamImage: UIImageView!
    @IBOutlet weak var oppenentTeamImage: UIImageView!
    @IBOutlet weak var matchDay: UILabel!
    @IBOutlet weak var matchTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
