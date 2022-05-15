//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 17.04.2022.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListe = [KisilerModel]()
    
    var anasayfaPresenterNesnesi:ViewToPresenterAnasayfaProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        AnasayfaRouter.createModule(ref: self)
        
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        anasayfaPresenterNesnesi?.kisileriYukle()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let kisi = sender as? KisilerModel {
                let gidilecekVC = segue.destination as! KisiDetayVC
                gidilecekVC.kisi = kisi
            }
        }
    }
}

extension AnasayfaVC : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText == "" {
            anasayfaPresenterNesnesi?.kisileriYukle()
        } else{
            anasayfaPresenterNesnesi?.ara(aramaKelimesi: searchText)
        }
        
    }
}

extension AnasayfaVC : PresenterToViewAnasayfaProtocol {
    func viewaVeriGonder(kisilerListesi: Array<KisilerModel>) {
        self.kisilerListe = kisilerListesi
        self.kisilerTableView.reloadData() //arayüzü güncellemek * * * * * * * *
    }
}

extension AnasayfaVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kisi = kisilerListe[indexPath.row]
        
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre", for: indexPath) as! TableViewCell
        
        hucre.kisiBilgiLabel.text = "\(kisi.kisi_ad!) - \(kisi.kisi_tel!)"
        
        return hucre
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let silAction = UIContextualAction(style: .destructive, title: "Sil") {
            (action, view, void) in
            let kisi = self.kisilerListe[indexPath.row]
            
            
            let alert = UIAlertController(title: "Silme işlemi", message: "\(kisi.kisi_ad!) silinsin mi?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel) {action in}
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "Evet", style: .destructive) {action in
                self.anasayfaPresenterNesnesi?.sil(kisi: kisi)
            }
            alert.addAction(evetAction)
            self.present(alert, animated: true)
        }
        
        return UISwipeActionsConfiguration(actions: [silAction])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kisi = kisilerListe[indexPath.row]
        //print("\(kisi.kisi_ad!) seçildi")
        performSegue(withIdentifier: "toDetay", sender: kisi)
        tableView.deselectRow(at: indexPath, animated: true) 
    }
}
