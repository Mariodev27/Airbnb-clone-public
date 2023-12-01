//
//  PlaceViewModel.swift
//  airbnb-clone-b
//
//  Created by Alumno on 1/12/23.
//

import SwiftUI

import Foundation

class PlaceViewModel: ObservableObject {
    @Published var airbnb: Airbnb = Airbnb(places: [])

    func loadData() async {
        guard let url = URL(string: "https://api-airbnb-basic.onrender.com/airbnb") else {
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
}
