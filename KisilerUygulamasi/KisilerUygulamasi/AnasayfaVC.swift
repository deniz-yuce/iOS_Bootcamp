//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 17.04.2022.
//

import UIKit

class AnasayfaVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonDetay(_ sender: Any) {
        performSegue(withIdentifier: "toDetay", sender: nil)
    }
    
    
}

