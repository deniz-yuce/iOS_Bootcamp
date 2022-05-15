//
//  ToDoRegisterPresenter.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 15.05.2022.
//

import Foundation

class ToDoRegisterPresenter : ViewToPresenterToDoRegisterProtocol {
    var toDoRegisterInteractor: PresenterToInteractorToDoRegisterProtocol?
    
    func register(todo_content: String) {
        toDoRegisterInteractor?.toDoRegister(todo_content: todo_content)
    }
}
