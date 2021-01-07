/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 The model for an individual landmark.
 */

import SwiftUI
import CoreLocation

struct dataProfil: Hashable, Codable, Identifiable {
    var id: Int
    fileprivate var imageName: String
}

extension dataProfil {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
