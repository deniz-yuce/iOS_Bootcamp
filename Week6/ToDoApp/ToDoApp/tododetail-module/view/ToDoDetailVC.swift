//
//  ToDoDetailVC.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 14.05.2022.
//

import UIKit

class ToDoDetailVC: UIViewController {

    @IBOutlet weak var tfToDo: UITextField!
    
    var toDo:ToDos?
    var toDoDetailPresenterObject:ViewToPresenterToDoDetailProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let t = toDo {
            tfToDo.text = t.todo_content
        }
        
        ToDoDetailRouter.createModule(ref: self)
    }
    
    @IBAction func buttonUpdate(_ sender: Any) {
        if let tc = tfToDo.text, let t = toDo {
            toDoDetailPresenterObject?.update(todo_id: t.todo_id!, todo_content: tc)
            let alertYes = UIAlertController(title: "Updated", message: "", preferredStyle: .alert)
            let okay = UIAlertAction(title: "Okay", style: .cancel) { action in }
            alertYes.addAction(okay)
            self.present(alertYes, animated: true)
        }
    }

}
