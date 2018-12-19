//
//  personCell.swift
//  XMLParser
//
//  Created by SENTHILKUMAR on 19/12/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

class personCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
