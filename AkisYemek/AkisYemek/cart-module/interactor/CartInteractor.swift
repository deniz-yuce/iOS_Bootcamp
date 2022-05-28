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
        let url = URL(string: "http://kasimadalan.pe.hu/yemekler/sepettekiYemekleriGetir.php")!
        
        URLSession.shared.dataTask(with: url){ data,response,error in
            if (error != nil) || data == nil {
                print("Error")
                return
            }
            
            do{
                let answer = try JSONDecoder().decode(CartFoods.self, from: data!)
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
        //cartPresenter?.sendDataToPresenter(foodsInCart: list)
    }
    
    func deleteFood(sepet_yemek_id: Int, kullanici_adi: String) {
        print("Food id : \(sepet_yemek_id) - Name : \(kullanici_adi) deleted.")
    }
}
