//
//  FoodInfoInteractor.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import Foundation

class FoodInfoInteractor : PresenterToInteractorFoodInfoProtocol {
    func addFood(yemek_adi: String, yemek_fiyat: Int, yemek_siparis_adet: Int) {
        print("Adding to cart : \(yemek_adi) - \(yemek_fiyat) - \(yemek_siparis_adet)")
        //(yemek_resim_adi) göndercen
        //var ex = "Deniz"
        //print(ex.lowercased()) OLARAK GONDER + USER ID GÖNDERCEN
        //FoodsInCart() nesnesi olarak gönder
    }
}
