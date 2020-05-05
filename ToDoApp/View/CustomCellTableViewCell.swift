//
//  CustomCellTableViewCell.swift
//  ToDoApp
//
//  Created by Bruno Kučević on 03/05/2020.
//  Copyright © 2020 Bruno Kučević. All rights reserved.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {

    @IBOutlet weak var view: UIView!

    @IBOutlet weak var titleLabel: UILabel!
    var delegate : CustomCellTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        view.layer.cornerRadius = 30
//        view.layer.masksToBounds = true
//        view.clipsToBounds = false
//        self.backgroundColor = UIColor.gray
//        titleLabel.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//    @IBAction func subtractQuantityTapped(_ sender: UIButton) {
//        delegate?.subtractQuantityButtonTapped()
//    }
//
//    @IBAction func addQuantityTapped(_ sender: UIButton) {
//        delegate?.addQuantityButtonTapped()
//    }
}
