/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 The model for an individual landmark.
 */

import SwiftUI
import CoreLocation

struct ActualCrypto: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var quantity: String
    fileprivate var imageName: String
    var value: String
    
}

extension ActualCrypto {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
