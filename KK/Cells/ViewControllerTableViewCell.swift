//
//  ViewControllerTablevireCellTableViewCell.swift
//  KK
//
//  Created by 鏑木公紀　 on 2018/12/08.
//  Copyright © 2018 鏑木公紀　. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
