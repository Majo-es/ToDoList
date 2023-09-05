//
//  ContentView.swift
//  To Do List
//
//  Created by Majo on 9/5/23.
//

import SwiftUI

struct ContentView: View {
    
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
        .sheet(isPresented: $showAddTaskView){
            AddTaskView()
                .environmentObject(realmManager)
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue: 0.709, saturation:0.085, brightness:0.976))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
