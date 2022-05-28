//
//  FoodInfoProtocols.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import Foundation

protocol ViewToPresenterFoodInfoProtocol {
    var foodInfoInteractor:PresenterToInteractorFoodInfoProtocol? {get set}
    
    func add(yemek_adi:String,yemek_fiyat:Int,yemek_siparis_adet:Int)
}

protocol PresenterToInteractorFoodInfoProtocol {
    func addFood(yemek_adi:String,yemek_fiyat:Int,yemek_siparis_adet:Int)
}

protocol PresenterToRouterFoodInfoProtocol {
    static func createModule(ref:FoodInfoVC)
}
