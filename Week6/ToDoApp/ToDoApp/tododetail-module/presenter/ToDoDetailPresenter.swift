//
//  ToDoDetailPresenter.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 15.05.2022.
//

import Foundation

class ToDoDetailPresenter : ViewToPresenterToDoDetailProtocol {
    var toDoDetailInteractor: PresenterToInteractorToDoDetailProtocol?
    
    func update(todo_id: Int, todo_content: String) {
        toDoDetailInteractor?.toDoUpdate(todo_id: todo_id, todo_content: todo_content)
    }
}
