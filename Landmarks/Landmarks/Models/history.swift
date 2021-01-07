/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 The model for an individual landmark.
 */

import SwiftUI
import CoreLocation

struct History: Hashable, Codable, Identifiable {
    var id: Int
    var quantity: String
    var value: String
    var name: String
    var buy : Bool
    fileprivate var imageName: String
    
}

extension History {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
