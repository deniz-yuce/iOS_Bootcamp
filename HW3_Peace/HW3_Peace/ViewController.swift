//
//  ViewController.swift
//  HW3_Peace
//
//  Created by Deniz Yüce on 13.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "M e d i t a t i o n"
        
        let appearance = UINavigationBarAppearance()
        //Arkaplan rengi
        appearance.backgroundColor = UIColor(named: "anaRenk")
        //başlık rengi
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!, NSAttributedString.Key.font: UIFont(name: "Lobster-Regular", size: 26)!]
        //status bar
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }


}

