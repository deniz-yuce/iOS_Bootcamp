//
//  Protocols.swift
//  ViperKullanimi
//
//  Created by Deniz Yüce on 30.04.2022.
//

import Foundation

//Ana protokoller
protocol ViewToPresenterProtocol {
    var interactor:PresenterToInteractorProtocol? { get set }
    var view:PresenterToViewProtocol? { get set }
    
    func toplamaYap(sayi1:String,sayi2:String) //simetrisi
    func carpmaYap(sayi1:String,sayi2:String)  //simetrisi
}

protocol PresenterToInteractorProtocol {
    var presenter:InteractorToPresenterProtocol? { get set }
    
    func topla(sayi1:String,sayi2:String)
    func carp(sayi1:String,sayi2:String)
}

//Taşıyıcı protokoller

protocol InteractorToPresenterProtocol {
    func presenteraVeriGonder(sonuc:String)
}

protocol PresenterToViewProtocol {
    func viewaVeriGonder(sonuc:String)  //simetrisi
}

//router protocol
protocol PresenterToRouterProtocol {
    static func createModule(ref:ViewController) //***modulün viev katmanı hangisiyse onun ismi yazılır*** //direk sınıf ismiyle erişelim
}
