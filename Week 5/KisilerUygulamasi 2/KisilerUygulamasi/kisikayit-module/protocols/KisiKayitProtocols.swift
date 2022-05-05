//
//  KisiKayitProtocols.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 30.04.2022.
//

import Foundation

protocol ViewToPresenterKisiKayitProtocol {
    var kisiKAyitInteractor:PresenterToInteractorKisiKayitProtocol? { get set }
    
    func ekle(kisi_ad:String,kisi_tel:String)
}

protocol PresenterToInteractorKisiKayitProtocol {
    func kisiEkle(kisi_ad:String,kisi_tel:String)
}

protocol PresenterToRouterKisiKayitProtocol {
    static func createModule(ref:KisiKayitVC)
}
