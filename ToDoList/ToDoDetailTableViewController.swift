//
//  ToDoDetailTableViewController.swift
//  ToDoList
//
//  Created by Michael Ryan on 9/22/20.
//  Copyright © 2020 Michael Ryan. All rights reserved.
//

import UIKit

class ToDoDetailTableViewController: UITableViewController {

    
    @IBOutlet weak var noteView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    var toDoItem: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if toDoItem == nil {
            toDoItem = ""
        }
        nameField.text = toDoItem
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        toDoItem = nameField.text
    }
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
        
    }
    
}
