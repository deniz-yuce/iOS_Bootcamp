//
//  ToDoDetailRouter.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 15.05.2022.
//

import Foundation

class ToDoDetailRouter : PresenterToRouterToDoDetailProtocol {
    static func createModule(ref: ToDoDetailVC) {
        ref.toDoDetailPresenterObject = ToDoDetailPresenter()
        ref.toDoDetailPresenterObject?.toDoDetailInteractor = ToDoDetailInteractor()
    }
}
