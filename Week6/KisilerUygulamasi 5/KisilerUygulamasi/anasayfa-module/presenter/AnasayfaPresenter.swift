//
//  AnasayfaPresenter.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 1.05.2022.
//

import Foundation

class AnaSayfaPresenter : ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    var anasayfaViev: PresenterToViewAnasayfaProtocol?
    
    func kisileriYukle() {
        anasayfaInteractor?.tumKisileriAl()
    }
    
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.kisiAra(aramaKelimesi: aramaKelimesi)
    }
    
    func sil(kisi_id: String) {
        anasayfaInteractor?.kisiSil(kisi_id: kisi_id)
    }
}

extension AnaSayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(kisilerListesi: Array<Kisiler>) {
        anasayfaViev?.viewaVeriGonder(kisilerListesi: kisilerListesi)
    }
}
