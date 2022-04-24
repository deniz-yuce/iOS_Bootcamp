//
//  ViewController.swift
//  DetayliTableViewKullanimi
//
//  Created by Deniz Yüce on 23.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urunlerTableView: UITableView!
    
    var urunlerListe = [Urunler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urunlerTableView.delegate = self
        urunlerTableView.dataSource = self
        
        urunlerTableView.separatorColor = UIColor(white: 0.95, alpha: 1)
       
        let u1 = Urunler(urun_id: 1, urun_ad: "Macbook Pro 14", urun_resim_ad: "bilgisayar", urun_fiyat: 33499.9)
        let u2 = Urunler(urun_id: 2, urun_ad: "Rayban Club Master", urun_resim_ad: "gozluk", urun_fiyat: 1499.9)
        let u3 = Urunler(urun_id: 3, urun_ad: "Sony ZX Series", urun_resim_ad: "kulaklik", urun_fiyat: 2499.9)
        let u4 = Urunler(urun_id: 4, urun_ad: "Gio Armani", urun_resim_ad: "parfum", urun_fiyat: 1299.9)
        let u5 = Urunler(urun_id: 5, urun_ad: "Casio X Series", urun_resim_ad: "saat", urun_fiyat: 899.9)
        let u6 = Urunler(urun_id: 6, urun_ad: "Dyson V8", urun_resim_ad: "supurge", urun_fiyat: 8899.9)
        let u7 = Urunler(urun_id: 7, urun_ad: "IPhone 13 Pro", urun_resim_ad: "telefon", urun_fiyat: 25999.9)
        
        urunlerListe.append(u1)
        urunlerListe.append(u2)
        urunlerListe.append(u3)
        urunlerListe.append(u4)
        urunlerListe.append(u5)
        urunlerListe.append(u6)
        urunlerListe.append(u7)
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource, HucreProtocol
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return urunlerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let urun = urunlerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "urunHucre", for: indexPath) as! UrunTableViewCell
        
        cell.urunResimImageVıew.image = UIImage(named: urun.urun_resim_ad!)
        cell.urunAdLabel.text = urun.urun_ad
        cell.urunFiyatLabel.text = "\(urun.urun_fiyat!) ₺"
        
        cell.backgroundColor = UIColor(white: 0.95, alpha: 1)
        cell.hucreArkaPlan.layer.cornerRadius = 10.0
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let urun = urunlerListe[indexPath.row]
        
        let silAction = UIContextualAction(style: .destructive, title: "Sil") { (action, view, void) in
            print("\(urun.urun_ad!) silindi")
        }

        let duzenleAction = UIContextualAction(style: .normal, title: "Düzenle") { (action, view, void) in
            print("\(urun.urun_ad!) düzenlendi")
        }
        
        return UISwipeActionsConfiguration(actions: [silAction, duzenleAction])
    }
    
    func buttonTiklandi(indexPath: IndexPath) {
        let urun = urunlerListe[indexPath.row]
        print("\(urun.urun_ad!) aaaa tıklandı")
    }
}
