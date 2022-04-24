//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Deniz Yüce on 16.04.2022.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi:Kisiler?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true //sayafadaki back tuşunu kaldırır
        
        if let k = kisi {
            print("Kişi adı : \(k.ad!)")
            print("Kişi yaş : \(k.yas!)")
            print("Kişi boy : \(k.boy!)")
            print("Kişi bekar : \(k.bekar!)")
        }
    }

    @IBAction func bittiTikla(_ sender: Any) {
        performSegue(withIdentifier: "SonucEkraninaGecis", sender: nil)
    }
    
    @IBAction func geriTikla(_ sender: Any) {
        
        //navigationController?.popViewController(animated: true)
        
        navigationController?.popToRootViewController(animated: true)
    }
}
