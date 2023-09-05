//
//  AddTaskView.swift
//  To Do List
//
//  Created by Majo on 9/5/23.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realManager: RealmManager
    @State private var title:String = ""
    @Environment(\.dismiss)var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Create a new task")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("Enter your task here", text: $title)
                .textFieldStyle(.roundedBorder)
            Button{
                if title != ""{
                    realManager.addTask(taskTitle: title)
                }
                dismiss()
            }label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(hue: 0.627, saturation:0.632, brightness:0.924))
                    .cornerRadius(30)
            }
            //Spacer = A flexible space that expands along the major axis of its containing stack layout, or on both axes if not contained in a stack.
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(hue: 0.709, saturation:0.085, brightness:0.976))
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
