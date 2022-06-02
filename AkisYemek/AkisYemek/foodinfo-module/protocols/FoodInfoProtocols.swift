//
//  FoodInfoProtocols.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import Foundation

protocol ViewToPresenterFoodInfoProtocol {
    var foodInfoInteractor:PresenterToInteractorFoodInfoProtocol? {get set}
    
    func add(yemek_adi:String,yemek_fiyat:String,yemek_siparis_adet:String,yemek_resim_adi:String)
}

protocol PresenterToInteractorFoodInfoProtocol {
    func addFood(yemek_adi:String,yemek_fiyat:String,yemek_siparis_adet:String,yemek_resim_adi:String)
}

protocol PresenterToRouterFoodInfoProtocol {
    static func createModule(ref:FoodInfoVC)
}
