//
//  ViewController.swift
//  ToDoList
//
//  Created by Michael Ryan on 9/22/20.
//  Copyright © 2020 Michael Ryan. All rights reserved.
//

import UIKit

class ToDoListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var toDoArray = ["Learn Swift", "Build Apps", "Change the World", "Take a Vacation"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }


}
extension ToDoListViewController: UITableViewDelegate, UITableViewDataSource {
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    print("Number of rows in section was just called. Returning \(toDoArray.count)")
    return toDoArray.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    print("CellForRowAt was just called for indexPath.row = \(indexPath.row) which is the cell containing \(toDoArray[indexPath.row])")
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    cell.textLabel?.text = toDoArray[indexPath.row]
    return cell
}

}
