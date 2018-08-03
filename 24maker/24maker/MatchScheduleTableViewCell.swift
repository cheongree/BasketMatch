//
//  MatchScheduleTableViewCell.swift
//  24maker
//
//  Created by cscoi021 on 2018. 8. 1..
//  Copyright © 2018년 Qyun. All rights reserved.
//

import UIKit

class MatchScheduleTableViewCell: UITableViewCell {

    @IBOutlet weak var myTeamImage: UIImageView! // 나의 팀의 이미지
    @IBOutlet weak var oppenentTeamImage: UIImageView! // 상대 팀의 이미지
    @IBOutlet weak var matchDay: UILabel! // 경기 일자
    @IBOutlet weak var matchTime: UILabel! // 경기 시간
    @IBOutlet weak var location: UILabel! // 경기 장소
    @IBOutlet weak var myTeamName: UILabel! // 나의 팀 이름
    @IBOutlet weak var opponentTeamName: UILabel! // 상대 팀 이름
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
