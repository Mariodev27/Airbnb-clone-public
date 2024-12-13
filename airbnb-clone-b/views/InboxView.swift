//
//  InboxView.swift
//  airbnb-clone-b
//
//  Created by Alumno on 10/11/23.
//

import SwiftUI

struct InboxView: View {
    @State private var selectedTab = "Messages"
    let tabs = ["Messages", "Notifications"]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("INBOX")
                .font(.title2)
                .padding()
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    VStack {
                        Text(tab)
                            .padding()
                            .onTapGesture {
                                selectedTab = tab
                            }
                        Rectangle()
                            .frame(height: 2)
                            .foregroundColor(selectedTab == tab ? .blue : .clear)
                    }
                }
            }
            .padding([.leading, .trailing])
            switch selectedTab {
            case "Messages":
                Text("You have no unread messages")
            case "Notifications":
                Text("You're all caught up")
            default:
                EmptyView()
            }
            Spacer()
        }
        .padding(.leading)
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
