//
//  TripsView.swift
//  airbnb-clone-b
//
//  Created by Mariodev27 on 10/11/23.
//

import SwiftUI
import MapKit

struct TripsView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -12.0450947, longitude: -76.9545933), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))

    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    Image("image")
                        .resizable()
                        .frame(width: 120)
                    VStack(alignment: .leading, spacing:4) {
                        Text("La Calera, Colombia")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .padding(.leading)
                        Spacer()
                        Text("Nov 19 - 24")
                            .font(.caption)
                            .fontWeight(.light)
                            .padding(.leading)
                        Text("S/ 268 night")
                            .font(.caption)
                            .padding(.leading)
                        Spacer()
                        HStack {
                            Spacer()
                            Image(systemName: "star.fill")
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 17, height: 15)
                            Text("4.91")
                                .font(.caption)
                        }
                    }
                    .padding(.vertical)
                    Spacer()
                    VStack {
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.top, 10)
                        Spacer()
                    }
                    .padding(.trailing)
                }
                .frame(height: 120)
                .background(.white)
            }
            .padding()
        }
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
