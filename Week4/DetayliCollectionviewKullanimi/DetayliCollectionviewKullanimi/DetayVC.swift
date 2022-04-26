//
//  DetayVC.swift
//  DetayliCollectionviewKullanimi
//
//  Created by Deniz Yüce on 24.04.2022.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var filmAdiLabel: UILabel!
    @IBOutlet weak var filmYonetmenAdiLabel: UILabel!
    @IBOutlet weak var filmFiyatLabel: UILabel!
    @IBOutlet weak var filmImageView: UIImageView!
    
    var film:Filmler?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let f = film {
            filmAdiLabel.text = f.filmAdi
            filmYonetmenAdiLabel.text = f.filmYonetmenAdi
            filmImageView.image = UIImage(named: f.filmResimAdi!)
            filmFiyatLabel.text = "\(f.filmFiyati!) ₺"
        }
    }
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        if let f = film {
            print("\(f.filmAdi!) sepete eklendi")
        }
    }
    
    

}
