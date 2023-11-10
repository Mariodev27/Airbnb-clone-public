//
//  MainView.swift
//  airbnb-clone-b
//
//  Created by Alumno on 10/11/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem{
                    VStack{
                        Image("magnifing")
                            .renderingMode(.template)
                        Text("Explore")
                    }
                }
            WishlistView()
                .tabItem{
                    VStack{
                        Image("heart")
                            .renderingMode(.template)
                        Text("Wishlist")
                    }
                }
            TripsView()
                .tabItem{
                    VStack{
                        Image("logo-icon")
                            .renderingMode(.template)
                        Text("Wishlist")
                    }
                }
            InboxView()
                .tabItem{
                    VStack{
                        Image("inbox")
                            .renderingMode(.template)
                        Text("Wishlist")
                    }
                }
            ProfileView()
                .tabItem{
                    VStack{
                        Image("profile")
                            .renderingMode(.template)
                        Text("Profile")
                    }
                }
        }
        .tint(Color("AirbnbPrimary"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
