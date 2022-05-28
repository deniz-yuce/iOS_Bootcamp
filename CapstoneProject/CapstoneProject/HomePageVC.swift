//
//  ViewController.swift
//  CapstoneProject
//
//  Created by Deniz Yüce on 22.05.2022.
//

import UIKit

class HomePageVC: UIViewController {

    @IBOutlet weak var foodsCollectionView: UICollectionView!
    
    var foodList = [Foods]()
    var kullanici_adi = "Deniz"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodsCollectionView.delegate = self
        foodsCollectionView.dataSource = self
        
        //parseProcess()
        
        let f1 = Foods(yemek_id: "1", yemek_adi: "ayran", yemek_resim_adi: "", yemek_fiyat: "12")
        let f2 = Foods(yemek_id: "2", yemek_adi: "kofte", yemek_resim_adi: "", yemek_fiyat: "10")
        let f3 = Foods(yemek_id: "3", yemek_adi: "doner", yemek_resim_adi: "", yemek_fiyat: "10")
        let f4 = Foods(yemek_id: "4", yemek_adi: "corba", yemek_resim_adi: "", yemek_fiyat: "10")
        let f5 = Foods(yemek_id: "5", yemek_adi: "kola", yemek_resim_adi: "", yemek_fiyat: "10")
        let f6 = Foods(yemek_id: "6", yemek_adi: "tatlı", yemek_resim_adi: "", yemek_fiyat: "12")
        foodList.append(f1)
        foodList.append(f2)
        foodList.append(f3)
        foodList.append(f4)
        foodList.append(f5)
        foodList.append(f6)
        
        let design = UICollectionViewFlowLayout()
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        design.minimumInteritemSpacing = 10
        design.minimumLineSpacing = 10
        let width = foodsCollectionView.frame.size.width
        let cellwidth = ( width - 30 ) / 2
        design.itemSize = CGSize(width: cellwidth, height: cellwidth)
        foodsCollectionView.collectionViewLayout = design
        
        
    }


}

extension HomePageVC : UICollectionViewDelegate, UICollectionViewDataSource, CellProtocol {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let food = foodList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "foodCell", for: indexPath) as! FoodsCollectionViewCell
        
        cell.foodImageView.image = UIImage(named: food.yemek_resim_adi!)
        cell.foodNameLabel.text = food.yemek_adi
        cell.foodPriceLabel.text = food.yemek_fiyat
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.3
        cell.layer.cornerRadius = 10.0
        
        cell.cellProtocol = self
        
        
        return cell
    }
    
    func goToInfo(indexPath: IndexPath) {
        let food = foodList[indexPath.row]
        print("\(food.yemek_adi!) 's info opened.")
    }
}
