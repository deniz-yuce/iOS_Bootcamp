//
//  Router.swift
//  ViperKullanimi
//
//  Created by Deniz Yüce on 30.04.2022.
//

import Foundation

class Router : PresenterToRouterProtocol {
    static func createModule(ref: ViewController) {
        let presenter = Presenter()
        
        //view sınıfı değişkeni yetkilendirme
        ref.presenterNesnesi = presenter
        
        //presenter sınıfı değişkenleri yetkilendirme
        ref.presenterNesnesi?.interactor = Interactor()
        ref.presenterNesnesi?.view = ref
        
        //interactor sınıfı değişkeni yetkilendirme
        ref.presenterNesnesi?.interactor?.presenter = presenter
    }
}
