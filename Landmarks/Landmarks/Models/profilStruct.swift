/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 The model for an individual landmark.
 */

import SwiftUI
import CoreLocation



struct Profil: Hashable, Codable, Identifiable {
    var id: Int
    fileprivate var imageName: String
    var history : Array<History>
}

extension Profil {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}


struct History: Hashable, Codable {
    var buy: Bool
    var value: String
    var name: String
    var quantity: String
}
