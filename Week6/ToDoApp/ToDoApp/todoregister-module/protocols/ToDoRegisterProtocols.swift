//
//  ToDoRegisterProtocols.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 15.05.2022.
//

import Foundation

protocol ViewToPresenterToDoRegisterProtocol {
    var toDoRegisterInteractor:PresenterToInteractorToDoRegisterProtocol? {get set}
    func register(todo_content:String)
}

protocol PresenterToInteractorToDoRegisterProtocol {
    func toDoRegister(todo_content:String)
}

protocol PresenterToRouterToDoRegisterProtocol {
    static func createModule(ref:ToDoRegisterVC)
}
