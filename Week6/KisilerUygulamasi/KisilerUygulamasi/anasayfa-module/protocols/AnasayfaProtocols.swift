//
//  AnasayfaProtocols.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 1.05.2022.
//

import Foundation

// Ana Protocols
protocol ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor:PresenterToInteractorAnasayfaProtocol? { get set }
    var anasayfaViev:PresenterToViewAnasayfaProtocol? { get set }
    
    func kisileriYukle()
    func ara(aramaKelimesi:String)
    func sil(kisi:KisilerModel)
}

protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol? { get set }
    
    func tumKisileriAl()
    func kisiAra(aramaKelimesi:String)
    func kisiSil(kisi:KisilerModel)
}

// Taşıyıcı Protocols
protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(kisilerListesi:Array<KisilerModel>)
}

protocol PresenterToViewAnasayfaProtocol {
    func viewaVeriGonder(kisilerListesi:Array<KisilerModel>)
}

// Router Protocol

protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref:AnasayfaVC)
}
