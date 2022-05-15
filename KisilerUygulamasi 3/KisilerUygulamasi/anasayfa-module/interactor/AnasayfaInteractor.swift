//
//  AnasayfaInteractor.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 1.05.2022.
//

import Foundation

class AnasayfaInteractor :PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    func tumKisileriAl() {
        var liste = [Kisiler]()
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Irmak", kisi_tel: "111111")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Kübra", kisi_tel: "222222")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Ece", kisi_tel: "333333")
        let k4 = Kisiler(kisi_id: 4, kisi_ad: "İrem", kisi_tel: "444444")
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)
        liste.append(k4)
        anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
    }
    
    func kisiAra(aramaKelimesi: String) {
        print("Arama sonucu : \(aramaKelimesi)")
    }
    
    func kisiSil(kisi_id: Int) {
        print("\(kisi_id) silindi")
    }
}
