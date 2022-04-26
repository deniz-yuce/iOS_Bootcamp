//
//  Filmler.swift
//  DetayliCollectionviewKullanimi
//
//  Created by Deniz Yüce on 24.04.2022.
//

import Foundation

class Filmler {
    var filmId:Int?
    var filmAdi:String?
    var filmResimAdi:String?
    var filmYonetmenAdi:String?
    var filmFiyati:Double?
    
    init(filmId:Int,filmAdi:String,filmResimAdi:String,filmYonetmenAdi:String,filmFiyati:Double) {
        self.filmId = filmId
        self.filmAdi = filmAdi
        self.filmResimAdi = filmResimAdi
        self.filmYonetmenAdi = filmYonetmenAdi
        self.filmFiyati = filmFiyati
    }
}
