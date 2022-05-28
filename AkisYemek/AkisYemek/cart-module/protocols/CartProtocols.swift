//
//  CartProtocols.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import Foundation

//Ana
protocol ViewToPresenterCartProtocol {
    var cartInteractor:PresenterToInteractorCartProtocol? {get set}
    var cartView:PresenterToViewCartProtocol? {get set}
    
    func getFoodsInCart()
    func delete(sepet_yemek_id:Int,kullanici_adi:String)
}

protocol PresenterToInteractorCartProtocol {
    var cartPresenter:InteractorToPresenterCartProtocol? {get set}
    
    func getAllFoodsInCart()
    func deleteFood(sepet_yemek_id:Int,kullanici_adi:String)
}

//Taşıyıcı
protocol InteractorToPresenterCartProtocol {
    func sendDataToPresenter(foodsInCart:Array<CartFoods>)
}

protocol PresenterToViewCartProtocol {
    func sendDataToView(foodsInCart:Array<CartFoods>)
}

//Router
protocol PresenterToRouterCartProtocol {
    static func createModule(ref:CartVC)
}
