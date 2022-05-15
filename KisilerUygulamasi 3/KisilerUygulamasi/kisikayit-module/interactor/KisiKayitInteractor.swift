//
//  KisiKayitInteractor.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 30.04.2022.
//

import Foundation

class KisiKayitInteractor: PresenterToInteractorKisiKayitProtocol {
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        print("Kişi kayıt : \(kisi_ad) - \(kisi_tel)")
    }
}
