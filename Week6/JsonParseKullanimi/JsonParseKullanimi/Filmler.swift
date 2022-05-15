//
//  Filmler.swift
//  JsonParseKullanimi
//
//  Created by Deniz Yüce on 7.05.2022.
//

import Foundation

class Filmler : Codable {
    var film_id:String?
    var film_ad:String?
    var film_yil:String?
    var film_resim:String?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
}
