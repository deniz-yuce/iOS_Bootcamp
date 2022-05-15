//
//  ViewController.swift
//  ToDoApp
//
//  Created by Deniz Yüce on 14.05.2022.
//

import UIKit

class HomePageVC: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var toDoTableView: UITableView!
    
    var toDosList = [ToDos]()
    
    var homePagePresenterObject:ViewToPresenterHomePageProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        toDoTableView.delegate = self
        toDoTableView.dataSource = self
        
        databaseCopy()
        
        HomePageRouter.createModule(ref: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        homePagePresenterObject?.viewToDos()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let toDo = sender as? ToDos {
                let destinationVC = segue.destination as! ToDoDetailVC
                destinationVC.toDo = toDo
            }
        }
    }
    
    func databaseCopy() {
        let bundlePath = Bundle.main.path(forResource: "records", ofType: ".sqlite")
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let placeToCopy = URL(fileURLWithPath: targetPath).appendingPathComponent("records.sqlite")
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: placeToCopy.path) {
            print("Veritabanı zaten var")
        } else {
            do {
                try fileManager.copyItem(atPath: bundlePath!, toPath: placeToCopy.path)
            } catch {}
        }
    }
}

extension HomePageVC : PresenterToViewHomePageProtocol {
    func sendDataToView(toDoList: Array<ToDos>) {
        self.toDosList = toDoList
        self.toDoTableView.reloadData()
    }
}

extension HomePageVC : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        homePagePresenterObject?.search(searchKeyword: searchText)
    }
}

extension HomePageVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDosList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let toDo = toDosList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath) as! TableViewCell
        
        cell.toDoInfoLabel.text = "\(toDo.todo_content!)"

        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Deleted") { (action,view,void) in
            
            let toDo = self.toDosList[indexPath.row]
            
            let alert = UIAlertController(title: "Delete", message: "Delete \(toDo.todo_content!)?", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in }
            alert.addAction(cancelAction)
            
            let yesAction = UIAlertAction(title: "Yes", style: .destructive) { action in
                self.homePagePresenterObject?.delete(todo_id: toDo.todo_id!)
            }
            alert.addAction(yesAction)
            self.present(alert, animated: true)
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let toDo = toDosList[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: toDo)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
