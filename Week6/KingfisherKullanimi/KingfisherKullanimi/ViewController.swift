//
//  ViewController.swift
//  KingfisherKullanimi
//
//  Created by Deniz Yüce on 8.05.2022.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resimGoster(resimAd: "ayran.png")
    }

    @IBAction func buttonResim1(_ sender: Any) {
        resimGoster(resimAd: "kofte.png")
    }
    @IBAction func buttonResim2(_ sender: Any) {
        resimGoster(resimAd: "kadayif.png")
    }
    
    func resimGoster(resimAd:String){
        DispatchQueue.main.async {
            let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(resimAd)")!
            self.imageView.kf.setImage(with: url)
        }
    }
}

