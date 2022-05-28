//
//  CartRouter.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import Foundation

class CartRouter : PresenterToRouterCartProtocol {
    static func createModule(ref: CartVC) {
        let presenter = CartPresenter()
        
        //View
        ref.cartPresenterObject = presenter
        
        //Presenter
        ref.cartPresenterObject?.cartInteractor = CartInteractor()
        ref.cartPresenterObject?.cartView = ref
        
        //Interactor
        ref.cartPresenterObject?.cartInteractor?.cartPresenter = presenter
    }
}
