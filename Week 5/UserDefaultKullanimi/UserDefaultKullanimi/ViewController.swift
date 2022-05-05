//
//  ViewController.swift
//  UserDefaultKullanimi
//
//  Created by Deniz Yüce on 1.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //user default
        let ud = UserDefaults.standard
        
        // Kayıt
        ud.set("Gizem", forKey: "ad")
        ud.set(23, forKey: "yas")
        ud.set(1.78, forKey: "boy")
        ud.set(true, forKey: "bekar")
        
        let liste = ["ali","ece"]
        ud.set(liste, forKey: "liste")
        
        let sehirler = ["16":"BURSA","34":"ISTANBUL"]
        ud.set(sehirler, forKey: "sehirler")
        
        // Silme
        //ud.removeObject(forKey: "ad")
        
        // Okuma
        let gelenAd = ud.string(forKey: "ad") ?? "isim yok" //eğer okumakta bir sıkıntı olduysa içerisine varsayılan değer olarak "isim yok" atanacak
        let gelenYas = ud.integer(forKey: "yas") // varsayılanı otomatik oarak 0 * * * *mülakattt
        let gelenBoy = ud.double(forKey: "boy") // varsayılan değeri 0.0 * * * *
        let gelenBekar = ud.bool(forKey: "bekar") // varsayılan değeri false
        
        print("Gelen ad : \(gelenAd)")
        print("Gelen yas : \(gelenYas)")
        print("Gelen boy : \(gelenBoy)")
        print("Gelen bekar : \(gelenBekar)")
        
        let gelenListe = ud.array(forKey: "liste") ?? [String]() // default boş liste verdik
        
        for a in gelenListe {
            print("Gelen arkadaş: \(a)")
        }
        
        let gelenSehirler = ud.dictionary(forKey: "sehirler") ?? [String:String]() // default boş dictionary verdik
        
        for (anahtar,deger) in gelenSehirler {
            print("Gelen şehir : \(anahtar) - \(deger)")
        }
        
        // ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * 
        
        // SAYAC UYGULAMASI
        var sayac = ud.integer(forKey: "sayac")
        
        sayac = sayac + 1
        
        ud.set(sayac, forKey: "sayac")
        
        labelSayac.text = "Açılış sayısı : \(sayac)"
    }


}

