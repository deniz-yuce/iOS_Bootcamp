//
//  ViewController.swift
//  DetayliCollectionviewKullanimi
//
//  Created by Deniz Yüce on 24.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var filmlerCollectionView: UICollectionView!
    
    var filmlerListesi = [Filmler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmlerCollectionView.delegate = self
        filmlerCollectionView.dataSource = self
        
        let f1 = Filmler(filmId: 1, filmAdi: "Django", filmResimAdi: "django", filmYonetmenAdi: "Quentin Tarantino", filmFiyati: 25.99)
        let f2 = Filmler(filmId: 2, filmAdi: "Inception", filmResimAdi: "inception", filmYonetmenAdi: "Christoper Nolan", filmFiyati: 23.99)
        let f3 = Filmler(filmId: 3, filmAdi: "Interstellar", filmResimAdi: "interstellar", filmYonetmenAdi: "Christoper Nolan", filmFiyati: 10.99)
        let f4 = Filmler(filmId: 4, filmAdi: "Anadoluda", filmResimAdi: "anadoluda", filmYonetmenAdi: "Nuri Bilge Ceylan", filmFiyati: 5.99)
        let f5 = Filmler(filmId: 5, filmAdi: "The Hateful Eight", filmResimAdi: "thehatefuleight", filmYonetmenAdi: "Quentin Tarantino", filmFiyati: 25.99)
        let f6 = Filmler(filmId: 6, filmAdi: "The Pianist", filmResimAdi: "thepianist", filmYonetmenAdi: "Roman Polanski", filmFiyati: 5.99)
        filmlerListesi.append(f1)
        filmlerListesi.append(f2)
        filmlerListesi.append(f3)
        filmlerListesi.append(f4)
        filmlerListesi.append(f5)
        filmlerListesi.append(f6)
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        let genislik = filmlerCollectionView.frame.size.width
        let hucreGenislik = (genislik - 30) / 2
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*1.7)
        filmlerCollectionView.collectionViewLayout = tasarim
    }


}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, HucreProtokol {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let film = filmlerListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmHucre", for: indexPath) as! FilmlerCollectionViewCell
        
        cell.filmImageView.image = UIImage(named: film.filmResimAdi!)
        cell.filmAdiLAbel.text = film.filmAdi
        cell.filmFiyatLabel.text = "\(film.filmFiyati!) ₺"
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.3
        cell.layer.cornerRadius = 10.0
        
        cell.hucreProtokol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
    func sepeteEkleTikla(indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        print("\(film.filmAdi!) sepete eklendi")
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: film)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let film = sender as? Filmler
            let gidilecekVC = segue.destination as! DetayVC
            gidilecekVC.film = film
        }
    }
}
