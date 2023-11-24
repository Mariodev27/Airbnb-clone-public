//
//  Card2.swift
//  airbnb-clone-b
//
//  Created by Alumno on 24/11/23.
//

import SwiftUI

struct Card2: View {

    var body: some View {
        VStack {
                Spacer()
                HStack{
                    ZStack (alignment: .topLeading){
                        Image("image")
                            .resizable()
                            .frame(width: 120, height: 120)
            }
            VStack (alignment: .leading) {
                HStack{
                    Image(systemName:"star.fill")
                        .resizable()
                        .frame(width:10,height:10)
                    Text("4.91 (116)")
                        .font(.caption)
                    Spacer()
                    Image(systemName:"heart")
                        .resizable()
                        .frame(width:13,height:13)
                    }
                HStack{
                    Text("La calera,Colombia")
                        .fontWeight(.semibold)
                        .font(.caption)
                    }
                    Text("Housted By Shaun")
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                        .font(.caption)
                }
                .padding(.vertical,9)
                .frame(maxHeight: 119)
                Spacer()
                }
                .background(.white)
                .cornerRadius(20)
            }.padding()
        }
    }



struct Card2_Previews: PreviewProvider {
    static var previews: some View {
        Card2()
    }
}
