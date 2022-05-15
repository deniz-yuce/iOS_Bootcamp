//
//  AnasayfaRouter.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 1.05.2022.
//

import Foundation

class AnasayfaRouter : PresenterToRouterAnasayfaProtocol {
    static func createModule(ref: AnasayfaVC) {
        let presenter = AnaSayfaPresenter()
        
        // View
        ref.anasayfaPresenterNesnesi = presenter
        
        // Presenter
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor = AnasayfaInteractor()
        ref.anasayfaPresenterNesnesi?.anasayfaViev = ref
        
        // Interactor
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor?.anasayfaPresenter = presenter
    }
}
