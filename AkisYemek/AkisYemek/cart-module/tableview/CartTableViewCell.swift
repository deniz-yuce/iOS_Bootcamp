//
//  CartTableViewCell.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import UIKit

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var cartImageView: UIImageView!
    @IBOutlet weak var cartNameLabel: UILabel!
    @IBOutlet weak var cartAmountLabel: UILabel!
    @IBOutlet weak var cartPriceLabel: UILabel!
    @IBOutlet weak var cellBackground: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
