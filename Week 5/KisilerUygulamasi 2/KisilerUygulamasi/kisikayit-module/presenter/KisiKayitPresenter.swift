//
//  KisiKayitPresenter.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 30.04.2022.
//

import Foundation

class KisiKayitPresenter : ViewToPresenterKisiKayitProtocol {
    var kisiKAyitInteractor: PresenterToInteractorKisiKayitProtocol?
    
    func ekle(kisi_ad: String, kisi_tel: String) {
        kisiKAyitInteractor?.kisiEkle(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
