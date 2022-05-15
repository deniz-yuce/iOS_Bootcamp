//
//  HomePagePresenter.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 15.05.2022.
//

import Foundation

class HomePagePresenter : ViewToPresenterHomePageProtocol {
    var homePageInteractor:PresenterToInteractorHomePageProtocol?
    var homePageView:PresenterToViewHomePageProtocol?
    
    func viewToDos() {
        homePageInteractor?.getAllToDos()
    }
    
    func search(searchKeyword: String) {
        homePageInteractor?.searchToDo(searchKeyword: searchKeyword)
    }
    
    func delete(todo_id: Int) {
        homePageInteractor?.deleteToDo(todo_id: todo_id)
    }
}

extension HomePagePresenter : InteractorToPresenterHomePageProtocol {
    func sendDataToPresenter(toDoList: Array<ToDos>) {
        homePageView?.sendDataToView(toDoList: toDoList)
    }
}
