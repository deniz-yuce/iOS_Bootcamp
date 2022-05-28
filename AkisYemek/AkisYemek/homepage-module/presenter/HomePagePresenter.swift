//
//  HomePagePresenter.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import Foundation

class HomePagePresenter : ViewToPresenterHomePageProtocol {
    var homePageInteractor: PresenterToInteractorHomePageProtocol?
    var homePageView: PresenterToViewHomePageProtocol?
    
    func getFoods() {
        homePageInteractor?.getAllFoods()
    }
}

extension HomePagePresenter : InteractorToPresenterHomePageProtocol {
    func sendDataToPresenter(foodsList: Array<Foods>) {
        homePageView?.sendDataToView(foodsList: foodsList)
    }
}
