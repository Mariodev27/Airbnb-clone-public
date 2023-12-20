//
//  PlaceViewModel.swift
//  airbnb-clone-b
//
//  Created by Alumno on 1/12/23.


//import SwiftUI
//
//import Foundation
//import MapKit
//
//class PlaceViewModel: ObservableObject {
//    @Published var airbnb: Airbnb = Airbnb(places: [])
//    @Published var annotations: [PlaceCoordinate] = [PlaceCoordinate]()
//
//
//    func loadData() async {
//        guard let url = URL(string: "https://airbnb-api-b-three.vercel.app/airbnb") else {
//            print("Invalid URL")
//            return
//        }
//
//        do {
//            let (data, _) = try await URLSession.shared.data(from: url)
//
//            if let decoder = try? JSONDecoder().decode(Airbnb.self, from: data) {
//                DispatchQueue.main.async {
//                    self.airbnb = decoder
//                }
//            }
//
//        } catch let error {
//            print(error.localizedDescription)
//        }
//    }
//
//    init() {
//        let places = [
//                Place(name: "London",rating: 0, location: Location(country:" ",city: " ",latitude: 51.507222, longitude: -0.1275),image_url: " ",date:" ",price: 0) ,
//                Place(name: "Paris",rating: 0, location: Location(country:" ",city: " ",latitude: 48.8567, longitude: 2.3508),image_url: " ",date:" ",price: 0)
//            ]
//        for place in places {
//            annotations.append(PlaceCoordinate(name: place.name, coordinate: CLLocationCoordinate2D(latitude: place.location.latitude, longitude: place.location.longitude)))
//                }
//        }
//}
//

import SwiftUI

import Foundation
import MapKit

class PlaceViewModel: ObservableObject {
    @Published var airbnb: Airbnb = Airbnb(places: [])
    @Published var annotations: [PlaceCoordinate] = [PlaceCoordinate]()

    init() {
        DispatchQueue.main.async {
            Task{
                await self.loadData()
                self.processResponse(places: self.airbnb.places)
            }
        }
    }
    
    func loadData() async {
        guard let url = URL(string: "https://airbnb-api-b-three.vercel.app/airbnb") else {
            print("Invalid URL")
            return
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)

            if let decoder = try? JSONDecoder().decode(Airbnb.self, from: data) {
                DispatchQueue.main.async {
                    self.airbnb = decoder
                }
            }

        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func processResponse(places: [Place]) {
        print(places)
        for place in places {
            let coordinate = CLLocationCoordinate2D(latitude: place.location.latitude, longitude: place.location.longitude)
            annotations.append(PlaceCoordinate(name: place.name, coordinate: coordinate, rating: place.rating, image_url: place.image_url, date: place.date, price: place.price))
        }
    }
    
}
