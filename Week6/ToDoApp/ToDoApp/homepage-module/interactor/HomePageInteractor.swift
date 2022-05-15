//
//  HomePageInteractor.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 15.05.2022.
//

import Foundation

class HomePageInteractor : PresenterToInteractorHomePageProtocol {
    var homePagePresenter: InteractorToPresenterHomePageProtocol?
    
    let db:FMDatabase?
    
    init(){
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let dbURL = URL(fileURLWithPath: targetPath).appendingPathComponent("records.sqlite")
        db = FMDatabase(path: dbURL.path)
    }
    
    func getAllToDos() {
        db?.open()
        var list = [ToDos]()
        
        do {
            let result = try db!.executeQuery("SELECT * FROM todos", values: nil)
            
            while result.next() {
                let toDo = ToDos(todo_id: Int(result.string(forColumn: "todo_id"))!, todo_content: result.string(forColumn: "todo_content")!)
                list.append(toDo)
            }
            
            homePagePresenter?.sendDataToPresenter(toDoList: list)
        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func searchToDo(searchKeyword: String) {
        db?.open()
        var list = [ToDos]()
        
        do {
            let result = try db!.executeQuery("SELECT * FROM todos WHERE todo_content like '%\(searchKeyword)%'", values: nil)
            
            while result.next() {
                let toDo = ToDos(todo_id: Int(result.string(forColumn: "todo_id"))!, todo_content: result.string(forColumn: "todo_content")!)
                list.append(toDo)
            }
            
            homePagePresenter?.sendDataToPresenter(toDoList: list)
        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func deleteToDo(todo_id: Int) {
        db?.open()
        do {
            try db!.executeUpdate("DELETE FROM todos WHERE todo_id = ?", values: [todo_id])
            getAllToDos()
        } catch {
            print(error.localizedDescription)
        }
        db?.close()
    }
}
