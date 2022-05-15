//
//  ToDoRegisterRouter.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 15.05.2022.
//

import Foundation

class ToDoRegisterRouter : PresenterToRouterToDoRegisterProtocol {
    static func createModule(ref: ToDoRegisterVC) {
        ref.toDoRegisterPresenterObject = ToDoRegisterPresenter()
        ref.toDoRegisterPresenterObject?.toDoRegisterInteractor = ToDoRegisterInteractor()
    }
}
