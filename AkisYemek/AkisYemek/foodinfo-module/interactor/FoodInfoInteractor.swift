//
//  FoodInfoInteractor.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import Foundation

class FoodInfoInteractor : PresenterToInteractorFoodInfoProtocol {
    let kullanici_adi = "Deniz"
    
    func addFood(yemek_adi: String, yemek_fiyat: String, yemek_siparis_adet: String, yemek_resim_adi: String) {
        //(yemek_resim_adi) göndercen
        //var ex = "Deniz"
        //print(ex.lowercased()) OLARAK GONDER + USER ID GÖNDERCEN
        //FoodsInCart() nesnesi olarak gönder
        
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/yemekler/sepeteYemekEkle.php")!)
        
        request.httpMethod = "POST"
        let postString = "yemek_adi=\(yemek_adi)&yemek_resim_adi=\(yemek_resim_adi)&yemek_fiyat=\(yemek_fiyat)&yemek_siparis_adet=\(yemek_siparis_adet)&kullanici_adi=\(kullanici_adi)"
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request){ data,response,error in
            if error != nil || data == nil {
                print("Error")
                return
            }
            
            do{
                let answer = try JSONSerialization.jsonObject(with: data!)
                print("Addindg to cart : \(answer)")
            } catch{
                print("err: \(error)")
            }
            
        }.resume()
    }
}
