//
//  AddListViewController.swift
//  To DoList
//
//  Created by Wa ibra. on 10/04/1443 AH.
//

import UIKit
import CoreData

class AddListViewController: UIViewController {

    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtDetails: UITextView!
    @IBOutlet weak var myDate: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func saveButton(_ sender: Any) {
        // save the list
        let newList = ToDoList(context: context)
        newList.title = txtTitle.text
        newList.detail = txtDetails.text
        newList.date = myDate.date
        do{
            appD.saveContext()
            print("Saved")
            txtTitle.text = ""
            txtDetails.text = ""
        }
        catch{
            print("error")
        }
        
        
    }
    

}
