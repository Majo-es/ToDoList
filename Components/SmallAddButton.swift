//
//  SmallAddButton.swift
//  To Do List
//
//  Created by Majo on 9/5/23.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        //ZStack: view that overlays its subviews, aligning them in both axes.
        ZStack{
            Circle()
                .frame(width:50)
                .foregroundColor(Color(hue: 0.627, saturation:0.632, brightness:0.924))
            Text("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        .frame(height: 50)
    }
}
//Struct:  store variables of different data types.
struct SmallAddButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}
