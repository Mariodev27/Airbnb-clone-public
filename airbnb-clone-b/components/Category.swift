//
//  Category.swift
//  airbnb-clone-b
//
//  Created by Mariodev27 on 3/11/23.
//

import SwiftUI

struct Category: View {
    var icon: String
    var text: String
    
    var body: some View {
        VStack {
            HStack{
                VStack{
                    Image(
                        icon)
                        .frame(width: 28, height: 28)
                        .font(.system(size: 28))
                    Text(text)
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundStyle(.gray)
                }
            }
        }
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category(icon: "home", text: "OMG!")
    }
}
