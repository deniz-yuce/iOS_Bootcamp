//
//  PageAVC.swift
//  ChangingPagesHW4
//
//  Created by Deniz Yüce on 22.04.2022.
//

import UIKit

class PageAVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func pageBButton(_ sender: Any) {
        performSegue(withIdentifier: "toPageB", sender: nil)
    }
    

}

