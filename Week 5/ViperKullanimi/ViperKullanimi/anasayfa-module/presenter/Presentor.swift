//
//  Presentor.swift
//  ViperKullanimi
//
//  Created by Deniz Yüce on 30.04.2022.
//

import Foundation

class Presenter : ViewToPresenterProtocol {
    var interactor: PresenterToInteractorProtocol?
    var view: PresenterToViewProtocol?
    
    func toplamaYap(sayi1: String, sayi2: String) {
        interactor?.topla(sayi1: sayi1, sayi2: sayi2) //interactor deki fonksiyonu çalıştıracak
    }
    
    func carpmaYap(sayi1: String, sayi2: String) {
        interactor?.carp(sayi1: sayi1, sayi2: sayi2)  //interactor deki fonksiyonu çalıştıracak
    }
}

//yakalicaz
extension Presenter : InteractorToPresenterProtocol {
    func presenteraVeriGonder(sonuc: String) {
        view?.viewaVeriGonder(sonuc: sonuc)
    }
}
