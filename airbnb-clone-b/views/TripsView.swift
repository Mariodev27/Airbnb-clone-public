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
    @State private var selectedPlace: PlaceCoordinate? = nil
    
    var body: some View {
        
        ZStack {
            Map(coordinateRegion: $region, annotationItems: placeViewModel.annotations) { place in
                MapAnnotation(coordinate: place.coordinate) {
                    Circle()
                        .fill(Color.red)
                        .frame(width: 10, height: 10)
                        .onTapGesture {
                            selectedPlace = place
                        }
                }
            }
            .ignoresSafeArea()
            
            if let place = selectedPlace {
                VStack {
                    Spacer()
                    HStack {
                        ZStack(alignment:.topLeading){
                            AsyncImage(url: URL(string: place.image_url)) { image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 120, height: 120)
                            Image(systemName:"xmark.circle.fill")
                                .background()
                                .cornerRadius(90)
                                .padding(6)
                                .onTapGesture {
                                    selectedPlace = nil
                                }
                        }
                        
                        VStack(alignment: .leading, spacing: 50) {
                            HStack(alignment:.bottom){
                                Text(place.name)
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                Spacer()
                                Image(systemName: "heart")
                            }
                            
                            HStack(alignment:.bottom){
                                VStack{
                                    Text(place.date)
                                        .font(.caption)
                                        .fontWeight(.light)
                                        .padding(.trailing,2)
                                    Text("$" + String(format: "%.2f", place.price))
                                        .font(.caption)
                                    
                                }
                                Spacer()
                                HStack{
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 8, height: 8)
                                    Text(String(format: "%.2f", place.rating))
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
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
