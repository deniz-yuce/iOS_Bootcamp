//
//  ToDoRegisterInteractor.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 15.05.2022.
//

import Foundation

class ToDoRegisterInteractor : PresenterToInteractorToDoRegisterProtocol {
    let db:FMDatabase?
    
    init(){
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let dbURL = URL(fileURLWithPath: targetPath).appendingPathComponent("records.sqlite")
        db = FMDatabase(path: dbURL.path)
    }
    
    
    func toDoRegister(todo_content: String) {
        db?.open()
        do {
            try db!.executeUpdate("INSERT INTO todos (todo_content) VALUES (?)", values: [todo_content])
        } catch {
            print(error.localizedDescription)
        }
        db?.close()
    }
}
