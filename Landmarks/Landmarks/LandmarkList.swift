/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A view showing a list of landmarks.
 */

import SwiftUI
import SwiftUICharts



struct LandmarkList: View {
    var body: some View {
        List(landmarkData){
            landmark in
            NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                LandmarkRow(landmark: landmark)
            }.navigationBarTitle("Cryptos")
        }.navigationBarTitle("Cryptos") // why this it not working??
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkList()
        }
        
    }
    
}
