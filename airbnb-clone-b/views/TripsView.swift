//
//  TripView.swift
//  airbnb-clone-b
//
//  Created by Mariodev27 on 10/11/23.
//

import SwiftUI
import MapKit

struct TripsView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    
    @StateObject var placeViewModel = PlaceViewModel()
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: placeViewModel.annotations){
            MapPin(coordinate: $0.coordinate)
        }
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    ZStack(alignment:.topLeading){
                        Image("image")
                            .resizable()
                            .frame(width: 120, height: 120)
                        Image(systemName:"xmark.circle.fill")
                            .background()
                            .cornerRadius(90)
                            .padding(6)
                    }
                    
                    VStack(alignment: .leading, spacing: 50) {
                        HStack(alignment:.bottom){
                            Text("La Calera, Colombia")
                                .font(.caption)
                                .fontWeight(.semibold)
                            Spacer()
                            Image(systemName: "heart")
                        }
                        
                        HStack(alignment:.bottom){
                            VStack{
                                Text("Nov 19 - 24")
                                    .font(.caption)
                                    .fontWeight(.light)
                                    .padding(.trailing,2)
                                Text("S/ 268 night")
                                    .font(.caption)
                                
                            }
                            Spacer()
                            HStack{
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 8, height: 8)
                                Text("4.91")
                                    .font(.caption)
                            }
                                
                        }
                        
                    }
                    
                    .padding(.vertical)
                    Spacer()
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
