//
//  CustomTableViewCell.swift
//  ww
//
//  Created by Andriy Tsymbalyuk on 4/30/19.
//  Copyright © 2019 Andriy Tsymbalyuk. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var habbitLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        timeLabel.textColor = .red
        
        button.addTarget(self, action: #selector(self.onclickDateCheckMark), for: .touchUpInside)
        button.setImage(UIImage(named: "plus-6"), for: .normal)
    }
    @objc func onclickDateCheckMark(sender:UIButton) {
        if sender.isSelected == true {
            button.setImage(UIImage(named: "verified"), for: .normal)
            sender.isSelected = false
        }else {
             button.setImage(UIImage(named: "plus-6"), for: .normal)
            sender.isSelected = true
            }
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
