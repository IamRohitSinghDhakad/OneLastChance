//
//  DetailTableViewCell.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh  on 07/05/24.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblBoxLeft: UILabel!
    @IBOutlet weak var lblDiscountPrice: UILabel!
    @IBOutlet weak var lblActualPrice: UILabel!
    @IBOutlet weak var lblPercentageOff: UILabel!
    @IBOutlet weak var lblDes: UILabel!
    @IBOutlet weak var lblCount: UILabel!
    @IBOutlet weak var btnOnMinus: UIButton!
    @IBOutlet weak var btnOnPlus: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
