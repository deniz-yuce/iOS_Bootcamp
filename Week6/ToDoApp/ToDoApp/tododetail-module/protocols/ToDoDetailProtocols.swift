//
//  ToDoDetailProtocols.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 15.05.2022.
//

import Foundation

protocol ViewToPresenterToDoDetailProtocol {
    var toDoDetailInteractor:PresenterToInteractorToDoDetailProtocol? {get set}
    
    func update(todo_id:Int,todo_content:String)
}

protocol PresenterToInteractorToDoDetailProtocol {
    func toDoUpdate(todo_id:Int,todo_content:String)
}

protocol PresenterToRouterToDoDetailProtocol {
    static func createModule(ref:ToDoDetailVC)
}
