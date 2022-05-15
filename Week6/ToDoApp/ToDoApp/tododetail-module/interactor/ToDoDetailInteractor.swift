//
//  ToDoDetailInteractor.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 15.05.2022.
//

import Foundation

class ToDoDetailInteractor : PresenterToInteractorToDoDetailProtocol{
    let db:FMDatabase?
    
    init(){
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let dbURL = URL(fileURLWithPath: targetPath).appendingPathComponent("records.sqlite")
        db = FMDatabase(path: dbURL.path)
    }
    
    
    func toDoUpdate(todo_id: Int, todo_content: String) {
        db?.open()
        do {
            try db!.executeUpdate("UPDATE todos SET todo_content = ? WHERE todo_id = ?", values: [todo_content,todo_id])
        } catch {
            print(error.localizedDescription)
        }
        db?.close()
    }
}
