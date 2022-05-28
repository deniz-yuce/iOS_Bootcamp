//
//  FoodsCollectionViewCell.swift
//  CapstoneProject
//
//  Created by Deniz Yüce on 25.05.2022.
//

import UIKit

protocol CellProtocol {
    func goToInfo(indexPath:IndexPath)
}

class FoodsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var foodPriceLabel: UILabel!
    
    var cellProtocol:CellProtocol?
    var indexPath:IndexPath?
    
    @IBAction func buttonAddToCart(_ sender: Any) {
        cellProtocol?.goToInfo(indexPath: indexPath!)
    }
}
