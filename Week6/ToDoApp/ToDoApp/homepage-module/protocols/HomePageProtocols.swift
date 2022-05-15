//
//  HomePageProtocols.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 15.05.2022.
//

import Foundation

protocol ViewToPresenterHomePageProtocol {
    var homePageInteractor:PresenterToInteractorHomePageProtocol? {get set}
    var homePageView:PresenterToViewHomePageProtocol? {get set}
    
    func viewToDos()
    func search(searchKeyword:String)
    func delete(todo_id:Int)
}
protocol PresenterToInteractorHomePageProtocol {
    var homePagePresenter:InteractorToPresenterHomePageProtocol? {get set}
    
    func getAllToDos()
    func searchToDo(searchKeyword:String)
    func deleteToDo(todo_id:Int)
}


protocol InteractorToPresenterHomePageProtocol {
    func sendDataToPresenter(toDoList:Array<ToDos>)
}
protocol PresenterToViewHomePageProtocol {
    func sendDataToView(toDoList:Array<ToDos>)
}


protocol PresenterToRouterHomePageProtocol {
    static func createModule(ref:HomePageVC)
}
