//
//  KisiKayitInteractor.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 30.04.2022.
//

import Foundation
import Alamofire

class KisiKayitInteractor: PresenterToInteractorKisiKayitProtocol {
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        let params:Parameters = ["kisi_ad":kisi_ad,"kisi_tel":kisi_tel]
        AF.request("http://kasimadalan.pe.hu/kisiler/insert_kisiler.php", method: .post, parameters: params).response { response in
            if let data = response.data {
                do {
                    let cevap = try JSONSerialization.jsonObject(with: data)
                    print(cevap)
                    
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}
