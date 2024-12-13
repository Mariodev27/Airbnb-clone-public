//
//  WishlistView.swift
//  airbnb-clone-b
//
//  Created by Alumno on 10/11/23.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        VStack(alignment: .center) {
            Title(text: "Unforgettable activities hosted by locals")
                .padding(.bottom, -15) // Reducir espacio después del título
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20) {
                    Filter(icon: "chevron.down", text: "Activity Type")
                    Filter(icon: "chevron.down", text: "Price")
                    Filter(icon: "chevron.down", text: "Language")
                    Filter(icon: "chevron.down", text: "Others")
                }
            }
            .padding(.horizontal)
            
            Spacer() // Añadir espacio para elevar el contenido
            
            VStack{
                Image("tour")
                ZStack{
                    Card2()
                }
            }
            Spacer() // Mantener el contenido centrado verticalmente
        }
    }
}

struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView()
    }
}
