//
//  TaskRow.swift
//  To Do List
//
//  Created by Majo on 9/5/23.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completed: Bool
    var body: some View {
        
        //HStack: A view that arranges its subviews in a horizontal line.
        HStack(spacing:20){
            Image(systemName: completed ? "checkmark.circle": "circle")
            Text(task)
            
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Study for quiz", completed: true)
    }
}
