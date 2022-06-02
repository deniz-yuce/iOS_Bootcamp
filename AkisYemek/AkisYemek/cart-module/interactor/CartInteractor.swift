//
//  CartInteractor.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import Foundation

class CartInteractor : PresenterToInteractorCartProtocol {
    var cartPresenter: InteractorToPresenterCartProtocol?
    
    func getAllFoodsInCart() {
        var list = [CartFoods]()
        let f1 = CartFoods(sepet_yemek_id: "1", yemek_adi: "elma", yemek_resim_adi: "bilgisayar", yemek_fiyat: "3", yemek_siparis_adet: "5", kullanici_adi: "Deniz")
        let f2 = CartFoods(sepet_yemek_id: "2", yemek_adi: "muz", yemek_resim_adi: "gozluk", yemek_fiyat: "15", yemek_siparis_adet: "6", kullanici_adi: "Deniz")
        let f3 = CartFoods(sepet_yemek_id: "3", yemek_adi: "kofte", yemek_resim_adi: "kulaklik", yemek_fiyat: "30", yemek_siparis_adet: "3", kullanici_adi: "Deniz")
        let f4 = CartFoods(sepet_yemek_id: "4", yemek_adi: "ayran", yemek_resim_adi: "parfum", yemek_fiyat: "8", yemek_siparis_adet: "7", kullanici_adi: "Deniz")
        let f5 = CartFoods(sepet_yemek_id: "5", yemek_adi: "tatlı", yemek_resim_adi: "saat", yemek_fiyat: "20", yemek_siparis_adet: "8", kullanici_adi: "Deniz")
        let f6 = CartFoods(sepet_yemek_id: "6", yemek_adi: "kola", yemek_resim_adi: "supurge", yemek_fiyat: "10", yemek_siparis_adet: "2", kullanici_adi: "Deniz")
        let f7 = CartFoods(sepet_yemek_id: "7", yemek_adi: "yoğurt", yemek_resim_adi: "telefon", yemek_fiyat: "5", yemek_siparis_adet: "1", kullanici_adi: "Deniz")
        list.append(f1)
        list.append(f2)
        list.append(f3)
        list.append(f4)
        list.append(f5)
        list.append(f6)
        list.append(f7)
        cartPresenter?.sendDataToPresenter(foodsInCart: list)
    }
    
    func deleteFood(sepet_yemek_id: Int, kullanici_adi: String) {
        print("Food id : \(sepet_yemek_id) - Name : \(kullanici_adi) deleted.")
    }
}
