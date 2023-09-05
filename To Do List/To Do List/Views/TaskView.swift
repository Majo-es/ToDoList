//
//  TaskView.swift
//  To Do List
//
//  Created by Majo on 9/5/23.
//

import SwiftUI

struct TaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    
    var body: some View {
        VStack{
            Text("My Tasks")
                .font(.title3).bold()
                .padding()
                .frame(maxWidth:.infinity, alignment: .leading)
            
            //Swipe actions only work inside the list
            List{
                //iterate
                ForEach(realmManager.tasks, id:\.id){
                    task in
                    if !task.isInvalidated{
                        TaskRow(task: task.title, completed: task.completed)
                        
                        //on tap gesture modifier
                            .onTapGesture {
                                realmManager.updateTask(id:task.id, completed: !task.completed)
                            }
                            //swipe action modifier: right to left to delete the row
                            .swipeActions(edge: .trailing){
                                Button(role:.destructive){
                                    realmManager.deleteTask(id: task.id)
                                }label:{
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                    }
                    
                }
                .listRowSeparator(.hidden)
            }
            .onAppear{
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance()
                    .backgroundColor = UIColor.clear
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hue: 0.709, saturation:0.085, brightness:0.976))
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
            .environmentObject(RealmManager())
    }
}
