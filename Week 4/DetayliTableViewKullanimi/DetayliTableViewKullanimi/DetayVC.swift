//
//  DetayVC.swift
//  DetayliTableViewKullanimi
//
//  Created by Deniz Yüce on 24.04.2022.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var urunResim: UIImageView!
    @IBOutlet weak var urunFiyat: UILabel!
    
    var urun:Urunler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let u = urun {
            self.navigationItem.title = u.urun_ad
            urunResim.image = UIImage(named: u.urun_resim_ad!)
            urunFiyat.text = "\(u.urun_fiyat!) ₺"
        }
    }
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        if let u = urun {
            print("\(u.urun_ad!) sepete eklendi")
        }
    }
    

}
