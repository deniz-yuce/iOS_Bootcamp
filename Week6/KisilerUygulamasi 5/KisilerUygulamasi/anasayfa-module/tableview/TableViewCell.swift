//
//  TableViewCell.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 23.04.2022.
//

import UIKit

//her hücrenin tamamını temsil edicek
//bu class a bağlanacak sayfanın tamamına değil

class TableViewCell: UITableViewCell {

    @IBOutlet weak var kisiBilgiLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
