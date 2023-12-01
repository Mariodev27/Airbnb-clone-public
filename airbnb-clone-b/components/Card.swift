//
//  Card.swift
//  airbnb-clone-b
//
//  Created by Alumno on 3/11/23.
//

import SwiftUI

struct Card: View {
    var place: Place
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            AsyncImage(url: URL(string: place.image_url)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 362, height: 323)
            .aspectRatio(contentMode: .fit)
            .cornerRadius(12)
            
            HStack{
                Text(place.name)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "star.fill")
                    .font(.system(size:11))
                Text(String(format: "%.2f", place.rating))
            }
            Text("Professional; Host")
                .fontWeight(.light)
                .foregroundStyle(.gray)
            Text(place.date)
                .fontWeight(.light)
                .foregroundStyle(.gray)
            Text("$\(place.price) total")
                .fontWeight(.semibold)
        }
    }
}

//struct Card_Previews: PreviewProvider {
//    static var previews: some View {
//        Card(place: Place(name: "Test Place", rating: 4.5, location: Location(country: "Test Country", city: "Test City"), image_url: "https://example.com/image.jpg", date: "Test Date", price: 100.0))
//    }
//}
