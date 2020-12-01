/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A view showing a list of landmarks.
 */

import SwiftUI
import SwiftUICharts

struct LandmarkList: View {
    var body: some View {
        VStack{
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LineChartView(data: landmark.graphs.value, title: landmark.name, legend: landmark.price)
                    //                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Cryptos"))
            
        }.padding(.top, -100)
        
        
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        
    }
    
}
