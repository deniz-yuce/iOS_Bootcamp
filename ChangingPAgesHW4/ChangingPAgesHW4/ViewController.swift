//
//  ViewController.swift
//  ChangingPagesHW4
//
//  Created by Deniz Yüce on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func pageAButton(_ sender: Any) {
        performSegue(withIdentifier: "toPageA", sender: nil)
    }
    
    @IBAction func pageXButton(_ sender: Any) {
        performSegue(withIdentifier: "toPageX", sender: nil)
    }
}

