//
//  FilmlerCevap.swift
//  JsonParseKullanimi
//
//  Created by Deniz Yüce on 7.05.2022.
//

import Foundation

// response class ı
class FilmlerCevap : Codable {
    var filmler:[Filmler]?
    var success:Int?
}
