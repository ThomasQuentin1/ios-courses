/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A view showing a list of landmarks.
 */

import SwiftUI
import SwiftUICharts


//struct LandmarkList: View {
//    private var columns: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible(minimum: 175)),
//        GridItem(.flexible(minimum: 175))
//    ]
//
//    var body: some View {
//        ScrollView {
//            HStack(){ Spacer(minLength: 99) // TODO ASK WHY
//                LazyVGrid(
//                    columns: columns,
//                    alignment: .leading,
//                    spacing: 016
//                ) {
//                    Section(header: Text("Featured").font(.title)) {
//                        NavigationLink(destination: LandmarkDetail(landmark: landmarkData[0])) {
//                            LineChartView(data: landmarkData[0].graphs.value, title: landmarkData[0].name, legend: landmarkData[0].price,
//                                          form:  ChartForm.large )
//                        }
//                    }
//
//                    Section(header: Text("Hot trends").font(.title)) {
//                        ForEach(landmarkData, id: \.self) { landmark in
//                            NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
//                                LineChartView(data: landmark.graphs.value, title: landmark.name, legend: landmark.price, form: ChartForm.medium)
//                                Spacer()
//                            }
//                        }
//                    }
//                }
//            }
//        }
//    }
//}

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
