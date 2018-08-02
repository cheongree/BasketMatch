//
//  RecruitTableViewCell.swift
//  24maker
//
//  Created by cscoi021 on 2018. 8. 1..
//  Copyright © 2018년 Qyun. All rights reserved.
//

import UIKit

class RecruitMemberTableViewCell: UITableViewCell {

    @IBOutlet weak var teamName: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var position: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var teamImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
