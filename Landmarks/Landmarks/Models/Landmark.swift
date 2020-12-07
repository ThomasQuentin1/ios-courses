/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model for an individual landmark.
*/

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    var price: String
    var graphs : GraphData
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}


struct GraphData: Hashable, Codable {
    var label: Array<String>
    var value: Array<Double>
}
