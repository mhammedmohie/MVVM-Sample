//
//  UserTableViewCell.swift
//  MVVM
//
//  Created by Mohammed ElGohary on 4/17/17.
//  Copyright © 2017 Mohammed ElGohary. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var userTitleLBL: UILabel!
    @IBOutlet weak var userNameLBL: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
