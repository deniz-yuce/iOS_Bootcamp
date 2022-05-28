//
//  FoodInfoRouter.swift
//  AkisYemek
//
//  Created by Deniz Yüce on 28.05.2022.
//

import Foundation

class FoodInfoRouter  : PresenterToRouterFoodInfoProtocol{
    static func createModule(ref: FoodInfoVC) {
        ref.foodInfoPresenterObject = FoodInfoPresenter()
        ref.foodInfoPresenterObject?.foodInfoInteractor = FoodInfoInteractor()
    }
}
