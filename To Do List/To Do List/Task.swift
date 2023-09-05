//
//  Task.swift
//  To Do List
//
//  Created by Majo on 9/5/23.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var  completed = false
}
