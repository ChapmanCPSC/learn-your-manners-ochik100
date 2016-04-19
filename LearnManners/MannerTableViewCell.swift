//
//  MannerTableViewCell.swift
//  LearnManners
//
//  Created by Kelly Ochikubo on 4/13/16.
//  Copyright © 2016 Kelly Ochikubo. All rights reserved.
//

import UIKit

class MannerTableViewCell: UITableViewCell {
    
    static var MANNER_CELL_ID = "manner_view"
    static var MANNER_DETAIL_NIB_NAME : String = "MannerTableViewCell"

    @IBOutlet weak var mannerLabel: UILabel!
    @IBOutlet weak var checkMarkImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initWithManner(manner : Manner)
    {
        self.mannerLabel.text = manner.title
    }
    
}
