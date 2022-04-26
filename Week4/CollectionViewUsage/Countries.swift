//
//  Countries.swift
//  CollectionViewUsage
//
//  Created by Deniz Yüce on 24.04.2022.
//

import Foundation

class Countries {
    var ulkeId:Int?
    var ulkeAd:String?
    var ulkeBaskent:String?
    
    init(ulkeId:Int, ulkeAd:String, ulkeBaskent:String) {
        self.ulkeId = ulkeId
        self.ulkeAd = ulkeAd
        self.ulkeBaskent = ulkeBaskent
    }
}
