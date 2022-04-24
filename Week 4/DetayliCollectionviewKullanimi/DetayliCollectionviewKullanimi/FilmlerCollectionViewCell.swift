//
//  FilmlerCollectionViewCell.swift
//  DetayliCollectionviewKullanimi
//
//  Created by Deniz Yüce on 24.04.2022.
//

import UIKit

protocol HucreProtokol {
    func sepeteEkleTikla(indexPath:IndexPath)
}

class FilmlerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmAdiLAbel: UILabel!
    @IBOutlet weak var filmFiyatLabel: UILabel!
    
    var hucreProtokol:HucreProtokol?
    var indexPath:IndexPath?
    
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        hucreProtokol?.sepeteEkleTikla(indexPath: indexPath!)
    }
}
