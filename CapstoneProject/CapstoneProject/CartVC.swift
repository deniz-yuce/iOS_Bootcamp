//
//  CartVC.swift
//  CapstoneProject
//
//  Created by Deniz Yüce on 25.05.2022.
//

import UIKit

class CartVC: UIViewController {

    @IBOutlet weak var foodCartTableView: UITableView!
    
    var cartFoodList = [CartFoods]()
    var kullanici_adi = "Deniz"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodCartTableView.delegate = self
        foodCartTableView.dataSource = self

        let f1 = CartFoods(sepet_yemek_id: 1, yemek_adi: "muz", yemek_resim_adi: "", yemek_fiyat: "7", yemek_siparis_adet: 2, kullanici_adi: kullanici_adi)
        let f2 = CartFoods(sepet_yemek_id: 2, yemek_adi: "elma", yemek_resim_adi: "", yemek_fiyat: "4", yemek_siparis_adet: 5, kullanici_adi: kullanici_adi)
        let f3 = CartFoods(sepet_yemek_id: 3, yemek_adi: "cilek", yemek_resim_adi: "", yemek_fiyat: "10", yemek_siparis_adet: 3, kullanici_adi: kullanici_adi)
        cartFoodList.append(f1)
        cartFoodList.append(f2)
        cartFoodList.append(f3)
    }
    
}

extension CartVC :UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartFoodList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let food = cartFoodList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartFoodCell", for: indexPath) as!  CartTableViewCell
        
        //cell.foodImageView.image =
        cell.foodNameLabel.text = "\(food.yemek_adi!)"
        cell.foodAmountLabel.text = "\(food.yemek_siparis_adet!)"
        cell.foodPriceLabel.text = "\(food.yemek_fiyat!)₺"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){(action,view,void) in
            let food = self.cartFoodList[indexPath.row]
            print("\(food.yemek_adi!) is deleted.")
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
}
