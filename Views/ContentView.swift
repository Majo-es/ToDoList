//
//  ContentView.swift
//  To Do List
//
//  Created by Majo on 9/5/23.
//

import SwiftUI

struct ContentView: View {
    
    //@EnvironmentObject: property wrapper type for an observable object that a parent or ancestor view supplies.
    @EnvironmentObject var realManager: RealmManager
    
    //@StateObject: property wrapper type that instantiates an observable object.
    @StateObject var realmManager = RealmManager ()
    
    //private key = is only accessible inside the content view
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack (alignment: .bottomTrailing){
            TaskView()
                .environmentObject(realmManager)
            
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        //Sheet: present a modal view to the user when a Boolean value provided is true.
        .sheet(isPresented: $showAddTaskView){
            AddTaskView()
                .environmentObject(realmManager)
        }
        //Frame: method to specify a fixed size for a view’s width, height, or both.
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue: 0.709, saturation:0.085, brightness:0.976))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //contentview: content view of the cell object
        ContentView()
    }
}
