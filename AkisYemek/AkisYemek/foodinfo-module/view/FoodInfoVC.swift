//
//  FoodInfoVC.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import UIKit

class FoodInfoVC: UIViewController {

    @IBOutlet weak var foodInfoImage: UIImageView! //kullanılcak mı?
    @IBOutlet weak var foodInfoNameLabel: UILabel!
    @IBOutlet weak var foodInfoPriceLabel: UILabel!
    @IBOutlet weak var foodInfoAmountLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    var foodInfoPresenterObject:ViewToPresenterFoodInfoProtocol?
    
    var food:Foods?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FoodInfoRouter.createModule(ref: self)

        if let f = food {
            foodInfoImage.image = UIImage(named: f.yemek_resim_adi!)
            foodInfoNameLabel.text = f.yemek_adi
            foodInfoPriceLabel.text = "\(f.yemek_fiyat!)₺"
        }
    }
    
    
    @IBAction func amountChange(_ sender: UIStepper) {
        foodInfoAmountLabel.text = String(Int(sender.value))
        print("Amount : \(Int(stepper.value))")
    }
    
    @IBAction func addToCart(_ sender: Any) {
        if let foodName = food?.yemek_adi, let foodPrice = food?.yemek_fiyat
            , let foodAmount = Int(foodInfoAmountLabel.text!) {
            foodInfoPresenterObject?.add(yemek_adi: foodName, yemek_fiyat: foodPrice, yemek_siparis_adet: foodAmount)
        }
    }
    
}
