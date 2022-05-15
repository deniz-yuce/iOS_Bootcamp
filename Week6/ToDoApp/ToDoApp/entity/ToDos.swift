//
//  ToDos.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 14.05.2022.
//

import Foundation

class ToDos {
    var todo_id:Int?
    var todo_content:String?
    
    init (todo_id:Int,todo_content:String) {
        self.todo_id = todo_id
        self.todo_content = todo_content
    }
}
