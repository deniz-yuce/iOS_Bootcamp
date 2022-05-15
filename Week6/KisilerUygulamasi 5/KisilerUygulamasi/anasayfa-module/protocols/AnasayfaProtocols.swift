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
    func sil(kisi_id:String)
}

protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol? { get set }
    
    func tumKisileriAl()
    func kisiAra(aramaKelimesi:String)
    func kisiSil(kisi_id:String)
}

// Taşıyıcı Protocols
protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(kisilerListesi:Array<Kisiler>)
}

protocol PresenterToViewAnasayfaProtocol {
    func viewaVeriGonder(kisilerListesi:Array<Kisiler>)
}

// Router Protocol

protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref:AnasayfaVC)
}
