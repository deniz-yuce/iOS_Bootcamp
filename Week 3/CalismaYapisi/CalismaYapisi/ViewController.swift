//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Deniz Yüce on 16.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad() 
        //bu metod sadece bir kere çalışır, sayfa açıldığında
        print("viewdidload çalıştı")
        //tek sefer çalışır
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear metodu çalıştı")
        //sayfa her göründüğünde çalışır
        //bu sayfaya geri dönüldüğünü buradan ankayabilrsiniz
        //geri dönüldğünde
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDissappear çalıştı")
        //sayfadan ayıldığında çalıştı
    }

    @IBAction func baslaTikla(_ sender: Any) {
        //labelAnasayfa.text = "Merhaba"
        let kisi = Kisiler(ad: "Deniz", yas: 22, boy: 1.68, bekar: false)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu çalıştı")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("oyun ekranına geçiş çalıştı")
            
            if let veri = sender as? Kisiler { //bunu sender ın veri türüne dönüştürmemiz lazım -String-
                //print("Veri : \(veri)")
                
                let gidilecekVC = segue.destination as! OyunEkraniVC //diğer vc ye eriştik
                gidilecekVC.kisi = veri
            }
        }
    }
    
    @IBAction func cikisTikla(_ sender: Any) {
        print("Çıkış tıklandı")
    }
    
    
    @IBAction func ekleCikis(_ sender: Any) {
        print("Ekle tıklandı")
    }
}

