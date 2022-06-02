//
//  FoodInfoPresenter.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import Foundation

class FoodInfoPresenter : ViewToPresenterFoodInfoProtocol {
    var foodInfoInteractor: PresenterToInteractorFoodInfoProtocol?
    
    func add(yemek_adi: String, yemek_fiyat: String, yemek_siparis_adet: String, yemek_resim_adi:String) {
        foodInfoInteractor?.addFood(yemek_adi: yemek_adi, yemek_fiyat: yemek_fiyat, yemek_siparis_adet: yemek_siparis_adet, yemek_resim_adi:yemek_resim_adi)
    }
}
