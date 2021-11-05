//
//  Task.swift
//  Todo
//


import Foundation
import RealmSwift

class Task: Object {
    @Persisted dynamic var text = ""
    @Persisted dynamic var dueDate = Date(timeIntervalSince1970: 1)
    @Persisted dynamic var note = ""
}
