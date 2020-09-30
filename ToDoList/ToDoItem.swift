//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Michael Ryan on 9/24/20.
//  Copyright © 2020 Michael Ryan. All rights reserved.
//

import Foundation
struct ToDoItem: Codable {
    var name: String
    var date: Date
    var notes: String
    var reminderSet: Bool
    var notificationID: String?
    var completed: Bool 
}
