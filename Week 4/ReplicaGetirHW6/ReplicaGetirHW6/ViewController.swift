//
//  ViewController.swift
//  ReplicaGetirHW6
//
//  Created by Deniz Yüce on 25.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urunlerCollectionView: UICollectionView!
    
    var urunlerListesi = [Urunler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urunlerCollectionView.delegate = self
        urunlerCollectionView.dataSource = self
        
        self.navigationItem.title = "getir"

        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.backgroundColor = UIColor(named: "anaRenk")

        navigationAppearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk")!, NSAttributedString.Key.font: UIFont(name: "Comfortaa-Bold", size: 30)!]
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isTranslucent = true

        navigationController?.navigationBar.standardAppearance = navigationAppearance
        navigationController?.navigationBar.compactAppearance = navigationAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationAppearance
        
        let u1 = Urunler(urunId: 1, urunAd: "Hyalüronik Asit Duş Jeli", urunMiktar: "500 ml", urunFiyat: 64.90, urunResimAdi: "resim1")
        let u2 = Urunler(urunId: 2, urunAd: "Herby Detox Tea Kayısılı", urunMiktar: "20'li", urunFiyat: 19.90, urunResimAdi: "resim2")
        let u3 = Urunler(urunId: 3, urunAd: "Ülker Mini All Star", urunMiktar: "227 g", urunFiyat: 32.70, urunResimAdi: "resim3")
        let u4 = Urunler(urunId: 4, urunAd: "Sensodyne Nourish", urunMiktar: "75 ml", urunFiyat: 39.90, urunResimAdi: "resim4")
        let u5 = Urunler(urunId: 5, urunAd: "Koroplast Pişirme Kağıdı", urunMiktar: "16'lı", urunFiyat: 24.50, urunResimAdi: "resim5")
        let u6 = Urunler(urunId: 6, urunAd: "Veet Tüy Dökücü Krem", urunMiktar: "200 ml", urunFiyat: 48.90, urunResimAdi: "resim6")
        let u7 = Urunler(urunId: 7, urunAd: "Pernigotti Sade & Karadut", urunMiktar: "120 ml", urunFiyat: 12.00, urunResimAdi: "resim7")
        let u8 = Urunler(urunId: 8, urunAd: "Eti Etimek Ekşi Mayalı", urunMiktar: "115 gr", urunFiyat: 12.34, urunResimAdi: "resim8")
        let u9 = Urunler(urunId: 9, urunAd: "Kent Boringer Meyveli Sos", urunMiktar: "320 gr", urunFiyat: 22.50, urunResimAdi: "resim9")
        let u10 = Urunler(urunId: 10, urunAd: "Dardanel Konserve Ton Balığı", urunMiktar: "4 x 75 gr", urunFiyat: 56.95, urunResimAdi: "resim10")
        let u11 = Urunler(urunId: 11, urunAd: "Duracell Kalın Kalem Pil", urunMiktar: "4'lü", urunFiyat: 49.90, urunResimAdi: "resim11")
        let u12 = Urunler(urunId: 12, urunAd: "Fairy Platinum Hijyen", urunMiktar: "500 ml", urunFiyat: 18.76, urunResimAdi: "resim12")
        urunlerListesi.append(u1)
        urunlerListesi.append(u2)
        urunlerListesi.append(u3)
        urunlerListesi.append(u4)
        urunlerListesi.append(u5)
        urunlerListesi.append(u6)
        urunlerListesi.append(u7)
        urunlerListesi.append(u8)
        urunlerListesi.append(u9)
        urunlerListesi.append(u10)
        urunlerListesi.append(u11)
        urunlerListesi.append(u12)
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 5
        tasarim.minimumLineSpacing = 5
        let genislik = urunlerCollectionView.frame.size.width
        let hucreGenislik = (genislik - 30) / 3
        tasarim.itemSize = CGSize(width: hucreGenislik, height: 1.25*hucreGenislik)
        
        urunlerCollectionView.collectionViewLayout = tasarim
    }


}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return urunlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let urun = urunlerListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "urunHucre", for: indexPath) as! UrunCollectionViewCell
        
        cell.urunAdLabel.text = urun.urunAd
        cell.urunImageView.image = UIImage(named: urun.urunResimAdi!)
        cell.urunFiyatLabel.text = "₺\(urun.urunFiyat!)"
        cell.urunMiktarLabel.text = urun.urunMiktar
        

        
        return cell
    }
}
