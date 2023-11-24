//
//  ContentView.swift
//  airbnb-clone-b
//
//  Created by Mariodev27 on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 50) {
                    Category(icon: "ovni", text: "OMG!")
                    Category(icon: "beaches", text: "Beaches")
                    Category(icon: "home", text: "Tiny Homes")
                    Category(icon: "golf", text: "Golfing")
                    Category(icon: "landscape", text: "Amazing")
                }
            }
            .padding()
            
            Divider()
            List{
                Card()
                Card()
                Card()
        
            }
            .listStyle(.inset)
            .scrollIndicators(.hidden)
            .padding([.trailing, .leading])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
