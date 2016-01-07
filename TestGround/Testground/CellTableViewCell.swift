//
//  CellTableViewCell.swift
//  Testground
//
//  Created by KUSKE, JOEL on 11/2/15.
//  Copyright © 2015 HOLM, JOEL. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var nameLabel: UILabel!
    
    
}
