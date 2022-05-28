//
//  HomePageProtocols.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import Foundation

//Ana
protocol ViewToPresenterHomePageProtocol {
    var homePageInteractor:PresenterToInteractorHomePageProtocol? {get set}
    var homePageView:PresenterToViewHomePageProtocol? {get set}
    
    func getFoods()
}

protocol PresenterToInteractorHomePageProtocol {
    var homePagePresenter:InteractorToPresenterHomePageProtocol? {get set}
    
    func getAllFoods()
}

//Taşıyıcı
protocol InteractorToPresenterHomePageProtocol {
    func sendDataToPresenter(foodsList:Array<Foods>)
}

protocol PresenterToViewHomePageProtocol {
    func sendDataToView(foodsList:Array<Foods>)
}

//Router
protocol PresenterToRouterHomePageProtocol {
    static func createModule(ref:HomePageVC)
}
