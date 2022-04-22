//
//  PageXVC.swift
//  ChangingPagesHW4
//
//  Created by Deniz Yüce on 22.04.2022.
//

import UIKit

class PageXVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func pageYButton(_ sender: Any) {
        performSegue(withIdentifier: "toPageY", sender: nil)
    }
    

}
