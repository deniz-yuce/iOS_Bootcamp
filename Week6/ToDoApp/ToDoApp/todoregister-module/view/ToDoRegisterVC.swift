//
//  ToDoRegisterVC.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 14.05.2022.
//

import UIKit

class ToDoRegisterVC: UIViewController {

    @IBOutlet weak var tfToDo: UITextField!
    
    var toDoRegisterPresenterObject:ViewToPresenterToDoRegisterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ToDoRegisterRouter.createModule(ref: self)
      
    }
    
    @IBAction func buttonAdd(_ sender: Any) {
        if let todo = tfToDo.text {
            toDoRegisterPresenterObject?.register(todo_content: todo)
            let alertYes = UIAlertController(title: "Added", message: "", preferredStyle: .alert)
            let okay = UIAlertAction(title: "Okay", style: .cancel) { action in }
            alertYes.addAction(okay)
            self.present(alertYes, animated: true)
        }
    }
    
}
