//
//  ViewController.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import UIKit
import Kingfisher

class HomePageVC: UIViewController {

    @IBOutlet weak var foodTableView: UITableView!
    
    var foodsList = [Foods]()
    
    var homePagePresenterObject:ViewToPresenterHomePageProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let apperearence = UINavigationBarAppearance()
        apperearence.backgroundColor = UIColor(named: "secondaryColor")
        //apperearence.titleTextAttributes = [.foregroundColor: UIColor(named: "fontColor")!]
        
        //navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.standardAppearance = apperearence
        navigationController?.navigationBar.compactAppearance = apperearence
        navigationController?.navigationBar.scrollEdgeAppearance = apperearence
        
        foodTableView.delegate = self
        foodTableView.dataSource = self
        
        HomePageRouter.createModule(ref: self)
       
        homePagePresenterObject?.getFoods()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "toInfo" {
            if let food = sender as? Foods {
                let destinedVC = segue.destination as! FoodInfoVC
                destinedVC.food = food
            }
        }
    }
    
    
}

extension HomePageVC : PresenterToViewHomePageProtocol {
    func sendDataToView(foodsList: Array<Foods>) {
        self.foodsList = foodsList
        DispatchQueue.main.async {
            self.foodTableView.reloadData()
        }
    }
}

extension HomePageVC : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let food = foodsList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodTableViewCell
        
        //cell.foodImageView.image = UIImage(named: food.yemek_resim_adi!)
        cell.foodNameLabel.text = food.yemek_adi
        cell.foodPriceLabel.text = "\(food.yemek_fiyat!)₺"
        let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(food.yemek_resim_adi!)")
        cell.foodImageView.kf.setImage(with: url)
        
        //cell.backgroundColor = UIColor.red
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let food = foodsList[indexPath.row]
        print("\(food.yemek_adi!) pressed")
        performSegue(withIdentifier: "toInfo", sender: food)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

