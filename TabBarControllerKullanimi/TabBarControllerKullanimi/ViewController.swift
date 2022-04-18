//
//  ViewController.swift
//  TabBarControllerKullanimi
//
//  Created by Deniz Yüce on 16.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items {
            let item = tabItems[1] //ilk tab
            item.badgeValue = "2"
        }
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.gray
        
        itemRenkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        itemRenkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        itemRenkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
    }
    
    func itemRenkDegistir(itemAppearance:UITabBarItemAppearance) {
        // Seçili olmayan durum rengi
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = UIColor.red
        
        // Seçili olan durum rengi
        itemAppearance.selected.iconColor = UIColor.yellow
        itemAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.yellow]
        itemAppearance.selected.badgeBackgroundColor = UIColor.blue
    }


}

