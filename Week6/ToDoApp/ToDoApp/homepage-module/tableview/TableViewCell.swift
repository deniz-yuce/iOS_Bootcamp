//
//  TableViewCell.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 15.05.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var toDoInfoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
