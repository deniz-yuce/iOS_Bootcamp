//
//  FoodInfoVC.swift
//  CapstoneProject
//
//  Created by Deniz Yüce on 25.05.2022.
//

import UIKit

class FoodInfoVC: UIViewController {
    
    var kullanici_adi = "Deniz"
    var foodImageName = "img1"
    
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var foodPriceLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    var food:Foods?
    var foodCart:CartFoods?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        if let f = food {
            //foodImageView
            foodNameLabel.text = f.yemek_adi
            foodPriceLabel.text = f.yemek_fiyat
        }
        if let c = foodCart {
            c.yemek_adi = food?.yemek_adi
            c.yemek_fiyat = food?.yemek_fiyat
            c.kullanici_adi = kullanici_adi
        }
    }
    
    
    @IBAction func amountChange(_ sender: UIStepper) {
        amountLabel.text = String(Int(sender.value))
        print("Amount : \(Int(stepper.value))")
    }
    
    @IBAction func buttonAddToCart(_ sender: Any) {   //resim adı ekle
//        if let foodName = foodNameLabel.text, let foodPrice = foodPriceLabel.text, let  foodAmount=amountLabel.text {
//            addToCart(yemek_adi: foodName, yemek_fiyat: Int(foodPrice)!, yemek_siparis_adet: Int(foodAmount)!, kullanici_adi: kullanici_adi)
//        }
    }
    
    func addToCart(yemek_adi:String,yemek_fiyat:Int,yemek_siparis_adet:Int,kullanici_adi:String) { //resim adi ekle
        print("Food name: \(yemek_adi)")
        print("Food name: \(yemek_fiyat)")
        print("Food name: \(yemek_siparis_adet)")
        print("Food name: \(kullanici_adi)")
    }

}
