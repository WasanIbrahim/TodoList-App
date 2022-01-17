//
//  ViewController.swift
//  To DoList
//
//  Created by Wa ibra. on 10/04/1443 AH.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var listTableView: UITableView!
    
    var list = [ToDoList]()
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for : indexPath) as! MyCellTableViewCell
        cell.setCell(list: list[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        list.remove(at: indexPath.row)
        listTableView.reloadData()
        appD.saveContext()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lodeLists()
    }
    func lodeLists(){
        let fetchRequest: NSFetchRequest<ToDoList> = ToDoList.fetchRequest()
        do{
            list = try context.fetch(fetchRequest)
            listTableView.reloadData()
        }
        catch{
          
            
        }
        
    }

}

