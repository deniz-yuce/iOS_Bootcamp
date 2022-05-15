//
//  AnasayfaInteractor.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 1.05.2022.
//

import Foundation

class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    func tumKisileriAl() {
        // GET
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php")!
            
        URLSession.shared.dataTask(with: url) { data,response,error in
            if error != nil || data == nil { //hata boş değilse veya data boşsa
                print("Hata")
                return
            }
            
            do{
                //let json = try JSONSerialization.jsonObject(with: data!)
                let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data!)
                if let liste = cevap.kisiler {
                    self.anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
                }
                
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func kisiAra(aramaKelimesi: String) {
        // POST
        var istek = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php")!)
        istek.httpMethod = "POST"
        let postString = "kisi_ad=\(aramaKelimesi)"
        istek.httpBody = postString.data(using: .utf8)
            
        URLSession.shared.dataTask(with: istek) { data,response,error in
            if error != nil || data == nil { //hata boş değilse veya data boşsa
                print("Hata")
                return
            }
            
            do{
                let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data!)
                if let liste = cevap.kisiler {
                    self.anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
                }
                
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func kisiSil(kisi_id: Int) {
        // POST
        var istek = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php")!)
        istek.httpMethod = "POST"
        let postString = "kisi_id=\(kisi_id)"
        istek.httpBody = postString.data(using: .utf8)
            
        URLSession.shared.dataTask(with: istek) { data,response,error in
            if error != nil || data == nil { //hata boş değilse veya data boşsa
                print("Hata")
                return
            }
            
            do{
                let cevap = try JSONSerialization.jsonObject(with: data!)
                print(cevap)
                self.tumKisileriAl() // ** arayüzün güncellenmesi ***
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
