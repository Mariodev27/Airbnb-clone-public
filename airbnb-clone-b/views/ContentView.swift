//
//  ContentView.swift
//  airbnb-clone-b
//
//  Created by Mariodev27 on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = PlaceViewModel()
    
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
            List(viewModel.airbnb.places) { place in
                Card(place: place)
            }
            .listStyle(.inset)
            .scrollIndicators(.hidden)
            .padding([.trailing, .leading])
            .task {
                await viewModel.loadData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//ContentView
//WishlistView
