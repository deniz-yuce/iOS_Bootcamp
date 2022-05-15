//
//  AnasayfaInteractor.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 1.05.2022.
//

import Foundation

class AnasayfaInteractor :PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func tumKisileriAl() {
        db?.open()
        var liste = [Kisiler]()
        
        do {
            let rs = try db!.executeQuery("SELECT * FROM kisiler", values: nil) //result = rs
            
            while rs.next() { //bir sonraki satırda kayıt olduğu sürece...
                let kisi = Kisiler(kisi_id: Int(rs.string(forColumn: "kiis_id"))!, kisi_ad: rs.string(forColumn: "kisi_ad")!, kisi_tel: rs.string(forColumn: "kisi_tel")!)
                liste.append(kisi)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        } catch {
            print(error.localizedDescription)
        }
        
        
        
        db?.close()
    }
    
    func kisiAra(aramaKelimesi: String) {
        print("Arama sonucu : \(aramaKelimesi)")
        db?.open()
        var liste = [Kisiler]()
        
        do {
            let rs = try db!.executeQuery("SELECT * FROM kisiler WHERE kisi_ad like '%\(aramaKelimesi)%'", values: nil) //result = rs
            
            while rs.next() { //bir sonraki satırda kayıt olduğu sürece...
                let kisi = Kisiler(kisi_id: Int(rs.string(forColumn: "kiis_id"))!, kisi_ad: rs.string(forColumn: "kisi_ad")!, kisi_tel: rs.string(forColumn: "kisi_tel")!)
                liste.append(kisi)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        } catch {
            print(error.localizedDescription)
        }
        
        
        
        db?.close()
    }
    
    func kisiSil(kisi_id: Int) {
        print("\(kisi_id) silindi")
        db?.open()
        do {
            try db!.executeUpdate("DELETE FROM kisiler WHERE kiis_id = ?", values: [kisi_id])
            //arayüzü günceller -tekrar yükle
            tumKisileriAl()
        } catch {
            print(error.localizedDescription)
        }
        db?.close()
    }
    
    
}
