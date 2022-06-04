//
//  CartVC.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import UIKit
import Kingfisher

class CartVC: UIViewController {

    @IBOutlet weak var cartTableView: UITableView!
    
    var foodsInCartList = [CartFoods]()
    
    var userName = "Deniz"
    
    var cartPresenterObject:ViewToPresenterCartProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let apperearence = UINavigationBarAppearance()
        apperearence.backgroundColor = UIColor(named: "secondaryColor")
        //apperearence.titleTextAttributes = [.foregroundColor: UIColor(named: "fontColor")!]
        
        //navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.standardAppearance = apperearence
        navigationController?.navigationBar.compactAppearance = apperearence
        navigationController?.navigationBar.scrollEdgeAppearance = apperearence
        
        cartTableView.delegate = self
        cartTableView.dataSource = self
        
        CartRouter.createModule(ref: self)

        cartPresenterObject?.getFoodsInCart()
    }
    
}

//sildikten sonra update yapılamlı
extension CartVC : PresenterToViewCartProtocol {
    func sendDataToView(foodsInCart: Array<CartFoods>) {
        self.foodsInCartList = foodsInCart
        DispatchQueue.main.async {
            self.cartTableView.reloadData()
        }
    }
}

extension CartVC :UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodsInCartList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let foodInCart = foodsInCartList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as! CartTableViewCell
        
        //cell.cartImageView.image = UIImage(named: foodInCart.yemek_resim_adi!)
        let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(foodInCart.yemek_resim_adi!)")
        cell.cartImageView.kf.setImage(with: url)
        cell.cartNameLabel.text = foodInCart.yemek_adi
        cell.cartAmountLabel.text = "\(foodInCart.yemek_siparis_adet!) x"
        cell.cartPriceLabel.text = "\(Int(foodInCart.yemek_fiyat!)!*Int(foodInCart.yemek_siparis_adet!)!)₺"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){ (action,view,void) in
            let foodInCart = self.foodsInCartList[indexPath.row]
            
            let alert = UIAlertController(title: "Remove", message: "Remove \(foodInCart.yemek_adi!)", preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {action in}
            alert.addAction(cancelAction)
            
            let yesAction = UIAlertAction(title: "Yes", style: .destructive) {action in
                print("\(foodInCart.yemek_adi!) with \(foodInCart.sepet_yemek_id!) id is deleted.")
                self.cartPresenterObject?.delete(sepet_yemek_id: Int(foodInCart.sepet_yemek_id!)!, kullanici_adi: self.userName)
            }
            alert.addAction(yesAction)
            self.present(alert, animated: true)
            
            //do deleting here with index path
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    
    
}
