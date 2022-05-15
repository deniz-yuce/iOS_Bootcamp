//
//  KisiDetayProtocols.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 1.05.2022.
//

import Foundation

protocol ViewToPresenterKisiDetayProtocol {
    var kisiDetayInteractor:PresenterToInteractorKisiDetayProtocol? { get set }
    
    func guncelle(kisi_id:String, kisi_ad:String, kisi_tel:String)
}

protocol PresenterToInteractorKisiDetayProtocol {
    func kisiGuncelle(kisi_id:String, kisi_ad:String, kisi_tel:String)
}

protocol PresenterToRouterKisiDetayProtocol {
    static func createModule(ref:KisiDetayVC)
}
