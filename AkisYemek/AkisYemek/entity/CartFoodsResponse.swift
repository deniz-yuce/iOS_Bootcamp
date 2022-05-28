//
//  CartFoodsResponse.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import Foundation

class CartFoodsResponse : Codable {
    var sepet_yemekler:[CartFoods]?
    var success:Int?
}
