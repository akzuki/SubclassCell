//
//  ParentTableViewCell.swift
//  SubclassCell
//
//  Created by Hai Phan on 12/5/17.
//  Copyright © 2017 Hai Phan. All rights reserved.
//

import UIKit

class ParentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var parentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

class SubclassTableViewCell: ParentTableViewCell {
    func configure() {
        parentLabel.text = "Subclass"
    }
}
