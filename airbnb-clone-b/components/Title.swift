//
//  Title.swift
//  airbnb-clone-b
//
//  Created by Alumno on 24/11/23.
//

import SwiftUI

struct Title: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.system(size: 30, weight: .semibold))
            .multilineTextAlignment(.center)
            .padding()
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(text: "Unforgettable activities hosted by locals")
    }
}
