//
//  Card.swift
//  airbnb-clone-b
//
//  Created by Alumno on 3/11/23.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Image("image")
                .frame(width: 362, height: 323)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(12)
            HStack{
                Text("Harlingen, Netherlands")
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "star.fill")
                    .font(.system(size:11))
                Text("4.76")
            }
            Text("Professional; Host")
                .fontWeight(.light)
                .foregroundStyle(.gray)
            Text("18-23 Dec")
                .fontWeight(.light)
                .foregroundStyle(.gray)
            Text("$1.065 total")
                .fontWeight(.semibold)
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
