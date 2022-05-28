//
//  CartPresenter.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import Foundation

class CartPresenter : ViewToPresenterCartProtocol {
    var cartInteractor: PresenterToInteractorCartProtocol?
    var cartView: PresenterToViewCartProtocol?
    
    func getFoodsInCart() {
        cartInteractor?.getAllFoodsInCart()
    }
    
    func delete(sepet_yemek_id: Int, kullanici_adi: String) {
        cartInteractor?.deleteFood(sepet_yemek_id: sepet_yemek_id, kullanici_adi: kullanici_adi)
    }
}

extension CartPresenter : InteractorToPresenterCartProtocol {
    func sendDataToPresenter(foodsInCart: Array<CartFoods>) {
        cartView?.sendDataToView(foodsInCart: foodsInCart)
    }
}
