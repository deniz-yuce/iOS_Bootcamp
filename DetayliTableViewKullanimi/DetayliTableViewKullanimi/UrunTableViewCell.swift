//
//  UrunTableViewCell.swift
//  DetayliTableViewKullanimi
//
//  Created by Deniz Yüce on 23.04.2022.
//

import UIKit

class UrunTableViewCell: UITableViewCell {
    
    @IBOutlet weak var urunResimImageVıew: UIImageView!
    @IBOutlet weak var urunAdLabel: UILabel!
    @IBOutlet weak var urunFiyatLabel: UILabel!
    @IBOutlet weak var hucreArkaPlan: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

    @IBAction func sepeteEkleButton(_ sender: Any) {
    }
}
