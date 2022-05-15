//
//  KisiDetayInteractor.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 1.05.2022.
//

import Foundation

class KisiDetayInteractor : PresenterToInteractorKisiDetayProtocol {
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func kisiGuncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String) {
        print("Kişi güncelle : \(kisi_id) - \(kisi_ad) - \(kisi_tel)")
        db?.open()
        do {
            try db!.executeUpdate("UPDATE kisiler SET kisi_ad = ? , kisi_tel = ? WHERE kiis_id = ?", values: [kisi_ad,kisi_tel,kisi_id])
        } catch {
            print(error.localizedDescription)
        }
        db?.close()
    }
}
