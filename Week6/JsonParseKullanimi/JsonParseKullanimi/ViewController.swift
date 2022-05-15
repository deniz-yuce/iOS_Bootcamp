//
//  ViewController.swift
//  JsonParseKullanimi
//
//  Created by Deniz Yüce on 7.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        parseIslemi()
    }

    func parseIslemi() {
        let url = URL(string: "http://kasimadalan.pe.hu/filmler/tum_filmler.php")!
        
        URLSession.shared.dataTask(with: url) { data,response,error in
            if error != nil || data == nil { //hata boş değilse veya data boşsa
                print("Hata")
                return
            }
            
            do{
                //let json = try JSONSerialization.jsonObject(with: data!)
                let cevap = try JSONDecoder().decode(FilmlerCevap.self, from: data!)
                if let basari = cevap.success {
                    print("Başarı : \(basari)")
                    print("******************")
                }
                
                if let filmler = cevap.filmler {
                    for f in filmler {
                        print("******************")
                        print("Film id : \(f.film_id!)")
                        print("Film ad : \(f.film_ad!)")
                        print("Film yıl : \(f.film_yil!)")
                        print("Film resim : \(f.film_resim!)")
                        print("Film kategori : \(f.kategori!.kategori_ad!)")
                        print("Film yönetmen : \(f.yonetmen!.yonetmen_ad!)")
                    }
                }
                
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
