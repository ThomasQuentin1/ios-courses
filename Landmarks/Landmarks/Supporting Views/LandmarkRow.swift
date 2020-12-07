/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A single row to be displayed in a list of landmarks.
 */

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name).bold()
            Spacer()
            VStack {
                Text(landmark.price).bold()
                if  (landmark.evolution.hasPrefix("+")){
                    Text(landmark.evolution).foregroundColor(Color.green)
                } else {
                    Text(landmark.evolution).foregroundColor(Color.red)
                }
            }
            
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
